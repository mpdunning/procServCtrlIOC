#!../../bin/linux-x86_64/procServCtrl


epicsEnvSet("EPICS_TS_MIN_WEST", '0')

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/procServCtrl.dbd"
procServCtrl_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("L1", "localhost:20039", 100, 0, 0)
drvAsynIPPortConfigure("L2", "localhost:20095", 100, 0, 0)
drvAsynIPPortConfigure("L3", "localhost:20100", 100, 0, 0)
drvAsynIPPortConfigure("L4", "localhost:20241", 100, 0, 0)
drvAsynIPPortConfigure("L5", "localhost:20245", 100, 0, 0)
drvAsynIPPortConfigure("L6", "localhost:20269", 100, 0, 0)
drvAsynIPPortConfigure("L7", "localhost:20270", 100, 0, 0)
drvAsynIPPortConfigure("L8", "localhost:20272", 100, 0, 0)
drvAsynIPPortConfigure("L9", "localhost:20292", 100, 0, 0)
drvAsynIPPortConfigure("L10", "localhost:20297", 100, 0, 0)
drvAsynIPPortConfigure("L11", "localhost:20298", 100, 0, 0)
drvAsynIPPortConfigure("L12", "localhost:20300", 100, 0, 0)
#drvAsynIPPortConfigure("L13", "localhost:20301", 100, 0, 0)
drvAsynIPPortConfigure("L14", "localhost:20303", 100, 0, 0)
drvAsynIPPortConfigure("L15", "localhost:20304", 100, 0, 0)
drvAsynIPPortConfigure("L16", "localhost:20305", 100, 0, 0)
drvAsynIPPortConfigure("L17", "localhost:20306", 100, 0, 0)
drvAsynIPPortConfigure("L18", "localhost:20309", 100, 0, 0)
drvAsynIPPortConfigure("L19", "localhost:20319", 100, 0, 0)
drvAsynIPPortConfigure("L20", "localhost:20320", 100, 0, 0)
drvAsynIPPortConfigure("L21", "localhost:20324", 100, 0, 0)
drvAsynIPPortConfigure("L22", "localhost:20325", 100, 0, 0)
drvAsynIPPortConfigure("L23", "localhost:20327", 100, 0, 0)
drvAsynIPPortConfigure("L24", "localhost:20329", 100, 0, 0)
drvAsynIPPortConfigure("L25", "localhost:20334", 100, 0, 0)
drvAsynIPPortConfigure("L26", "localhost:20340", 100, 0, 0)
drvAsynIPPortConfigure("L27", "localhost:20344", 100, 0, 0)
drvAsynIPPortConfigure("L28", "localhost:20346", 100, 0, 0)

#asynSetTraceMask("L1",-1,0x9)
#asynSetTraceIOMask("L1",-1,0x2)

dbLoadRecords("db/psctrl-asta.db")

cd ${TOP}/iocBoot/${IOC}
iocInit

seq(procServControl,"P=sioc-asta-bkh5")
seq(procServControl,"P=sioc-asta-bkh12")
seq(procServControl,"P=sioc-asta-sc01")
seq(procServControl,"P=sioc-asta-bkh9")
seq(procServControl,"P=sioc-asta-scop01")
seq(procServControl,"P=sioc-asta-bkh30")
seq(procServControl,"P=sioc-asta-uedm")
seq(procServControl,"P=sioc-asta-uedmc")
seq(procServControl,"P=sioc-asta-polx01")
seq(procServControl,"P=sioc-asta-psrv01")
seq(procServControl,"P=sioc-asta-stats01")
seq(procServControl,"P=sioc-asta-scop02")
#seq(procServControl,"P=sioc-asta-ada01")
seq(procServControl,"P=sioc-asta-lsc01")
seq(procServControl,"P=sioc-asta-lsc02")
seq(procServControl,"P=sioc-asta-lsc03")
seq(procServControl,"P=sioc-asta-pv01")
seq(procServControl,"P=sioc-asta-stats02")
seq(procServControl,"P=sioc-asta-pv02")
seq(procServControl,"P=sioc-asta-pv03")
seq(procServControl,"P=sioc-asta-pv04")
seq(procServControl,"P=sioc-asta-pv05")
seq(procServControl,"P=sioc-asta-sc02")
seq(procServControl,"P=sioc-asta-dg01")
seq(procServControl,"P=sioc-asta-lake01")
seq(procServControl,"P=sioc-asta-bkh31")
seq(procServControl,"P=sioc-asta-bkh32")
seq(procServControl,"P=sioc-asta-sint01")

