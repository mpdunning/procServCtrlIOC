#!/bin/bash
#
# md 12/1/15

args="AREA"

function show_usage {
    echo "Usage: $0 $args"
}

if [ $# -ne 1 ]; then
    show_usage
    exit 1
fi

procServPath=/afs/slac/g/testfac/setup/procserv
area=$1
now=`date +%Y%m%d.%H%M%S`

if [ "$area" = "nlcta" ]; then
    options="| grep -v adps"
    create_db=yes
    create_stcmd=yes
    dbFile=psctrl-$area.substitutions
    iocName=sioc-esb-psrv01
    stcmdDir=../../iocBoot/$iocName
    stcmdFile=$stcmdDir/st.cmd
elif [ "$area" = "asta" ]; then
    options="| grep -v adps"
    create_db=yes
    create_stcmd=yes
    dbFile=psctrl-$area.substitutions
    iocName=sioc-$area-psrv01
    stcmdDir=../../iocBoot/$iocName
    stcmdFile=$stcmdDir/st.cmd
elif [ "$area" = "esa" ]; then
    options="| grep -v adps"
    create_db=yes
    create_stcmd=yes
    dbFile=psctrl-$area.substitutions
    iocName=sioc-$area-psrv01
    stcmdDir=../../iocBoot/$iocName
    stcmdFile=$stcmdDir/st.cmd
elif [ "$area" = "cha" ]; then
    options="| grep -v adps"
    create_db=yes
    create_stcmd=yes
    dbFile=psctrl-$area.substitutions
    iocName=sioc-$area-psrv01
    stcmdDir=../../iocBoot/$iocName
    stcmdFile=$stcmdDir/st.cmd
else
    echo "Invalid area $area"
    show_usage
    exit 1
fi

# Create db file
if [ "$create_db" = "yes" ]; then
    # Back up current db file if it exists
    if [ -f "$dbFile" ]; then
        echo "Backing up original file to $dbFile.bak-$now"
        cp $dbFile $dbFile.bak-$now
    fi

    echo "Creating $dbFile"
    > $dbFile
    echo "# This file created by $0 on $now" >> $dbFile
    echo "#" >> $dbFile
    echo "# Macros:" >> $dbFile
    echo "#  P            Device prefix" >> $dbFile
    echo "#  PORT         Asyn port name" >> $dbFile
    echo "#  SHOWOUT      Set this to 0 to disable the IOC output display" >> $dbFile
    echo "#  MANUALSTART  Set this to # if the IOC is manually started. This changes the severity of STATUS" >> $dbFile
    echo "#  name         Object and gui association name" >> $dbFile
    echo "" >> $dbFile
    echo "file procServControl.template {" >> $dbFile
    echo "pattern {         P, PORT, SHOWOUT, MANUALSTART,              name }" >> $dbFile

    counter=1
    while read line; do
        modLine="$line | grep -w $area | grep ioc | grep -v '#' $options | tr -s ' '"
        area2=`eval echo $modLine | cut -d " " -f 3`
        ioc=`eval echo $modLine | cut -d " " -f 1`
        bootFlag=`eval echo $modLine | cut -d " " -f 8`
        if [ -n "$ioc" -a "$area" = "$area2" ]; then
            if [ "$bootFlag" = 1 ]; then
                echo "{  \"$ioc\", \"L${counter}\",     \"1\",          \"\",  \"$ioc\" }" >> $dbFile
            else
                #echo "{  \"$ioc\", \"L${counter}\",     \"1\",          \"\#\",  \"$ioc\" }" >> $dbFile
                echo "{  \"$ioc\", \"L${counter}\",     \"1\",          \"\",  \"$ioc\" }" >> $dbFile
            fi
            counter=$((counter + 1))
        fi
    done < $procServPath/table.txt

    echo "}" >> $dbFile
    echo "Done. $counter db entries."
fi

# Optionally create st.cmd file if create_stcmd=yes
if [ "$create_stcmd" = "yes" -a -d "$stcmdDir" ]; then
    # Back up current file if it exists
    if [ -f "$stcmdFile" ]; then
        echo "Backing up original file to $stcmdFile.bak-$now"
        cp $stcmdFile $stcmdFile.bak-$now
    fi

    echo "Creating $stcmdFile"
    > $stcmdFile
    echo "#!../../bin/linux-x86_64/procServCtrl" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "epicsEnvSet(\"EPICS_TS_MIN_WEST\", '0')" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "< envPaths" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "cd \${TOP}" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "dbLoadDatabase \"dbd/procServCtrl.dbd\"" >> $stcmdFile
    echo "procServCtrl_registerRecordDeviceDriver(pdbbase)" >> $stcmdFile
    echo "" >> $stcmdFile

    counter=1
    while read line; do
        modLine="$line | grep -w $area | grep ioc | grep -v '#' $options | tr -s ' '"
        area2=`eval echo $modLine | cut -d " " -f 3`
        ioc=`eval echo $modLine | cut -d " " -f 1`
        tPort=`eval echo $modLine | cut -d " " -f 7`
        bootFlag=`eval echo $modLine | cut -d " " -f 8`
        if [ -n "$ioc" -a "$area" = "$area2" ]; then
            if [ "$bootFlag" = 1 ]; then
                echo "drvAsynIPPortConfigure(\"L${counter}\", \"localhost:${tPort}\", 100, 0, 0)" >> $stcmdFile
            else
                echo "#drvAsynIPPortConfigure(\"L${counter}\", \"localhost:${tPort}\", 100, 0, 0)" >> $stcmdFile
            fi
            counter=$((counter + 1))
        fi
    done < $procServPath/table.txt

    echo "" >> $stcmdFile
    echo "#asynSetTraceMask(\"L1\",-1,0x9)" >> $stcmdFile
    echo "#asynSetTraceIOMask(\"L1\",-1,0x2)" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "dbLoadRecords(\"db/${dbFile/substitutions/db}\")" >> $stcmdFile
    echo "" >> $stcmdFile
    echo "cd \${TOP}/iocBoot/\${IOC}" >> $stcmdFile
    echo "iocInit" >> $stcmdFile
    echo "" >> $stcmdFile
    
    while read line; do
        modLine="$line | grep -w $area | grep ioc | grep -v '#' $options | tr -s ' '"
        area2=`eval echo $modLine | cut -d " " -f 3`
        ioc=`eval echo $modLine | cut -d " " -f 1`
        tPort=`eval echo $modLine | cut -d " " -f 7`
        bootFlag=`eval echo $modLine | cut -d " " -f 8`
        if [ -n "$ioc" -a "$area" = "$area2" ]; then
            if [ "$bootFlag" = 1 ]; then
                echo "seq(procServControl,\"P=$ioc\")" >> $stcmdFile
            else
                echo "#seq(procServControl,\"P=$ioc\")" >> $stcmdFile
            fi
        fi
    done < $procServPath/table.txt
    
    echo "" >> $stcmdFile
    
    echo "Done."
elif [ "$create_stcmd" = "yes" -a ! -d "$stcmdDir" ]; then
    echo "$stcmdDir does not exist"
fi


exit 0
