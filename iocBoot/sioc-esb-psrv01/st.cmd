#!../../bin/linux-x86_64/procServCtrl


epicsEnvSet("EPICS_TS_MIN_WEST", '0')

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/procServCtrl.dbd"
procServCtrl_registerRecordDeviceDriver(pdbbase)

#drvAsynIPPortConfigure("L1", "localhost:20022", 100, 0, 0)
#drvAsynIPPortConfigure("L2", "localhost:20023", 100, 0, 0)
drvAsynIPPortConfigure("L3", "localhost:20028", 100, 0, 0)
#drvAsynIPPortConfigure("L4", "localhost:20029", 100, 0, 0)
#drvAsynIPPortConfigure("L5", "localhost:20031", 100, 0, 0)
drvAsynIPPortConfigure("L6", "localhost:20032", 100, 0, 0)
#drvAsynIPPortConfigure("L7", "localhost:20033", 100, 0, 0)
drvAsynIPPortConfigure("L8", "localhost:20034", 100, 0, 0)
drvAsynIPPortConfigure("L9", "localhost:20035", 100, 0, 0)
drvAsynIPPortConfigure("L10", "localhost:20036", 100, 0, 0)
#drvAsynIPPortConfigure("L11", "localhost:20037", 100, 0, 0)
drvAsynIPPortConfigure("L12", "localhost:20040", 100, 0, 0)
#drvAsynIPPortConfigure("L13", "localhost:20046", 100, 0, 0)
#drvAsynIPPortConfigure("L14", "localhost:20047", 100, 0, 0)
#drvAsynIPPortConfigure("L15", "localhost:20048", 100, 0, 0)
#drvAsynIPPortConfigure("L16", "localhost:20049", 100, 0, 0)
#drvAsynIPPortConfigure("L17", "localhost:20050", 100, 0, 0)
#drvAsynIPPortConfigure("L18", "localhost:20051", 100, 0, 0)
#drvAsynIPPortConfigure("L19", "localhost:20052", 100, 0, 0)
#drvAsynIPPortConfigure("L20", "localhost:20054", 100, 0, 0)
drvAsynIPPortConfigure("L21", "localhost:20055", 100, 0, 0)
drvAsynIPPortConfigure("L22", "localhost:20056", 100, 0, 0)
drvAsynIPPortConfigure("L23", "localhost:20058", 100, 0, 0)
drvAsynIPPortConfigure("L24", "localhost:20059", 100, 0, 0)
drvAsynIPPortConfigure("L25", "localhost:20060", 100, 0, 0)
drvAsynIPPortConfigure("L26", "localhost:20061", 100, 0, 0)
drvAsynIPPortConfigure("L27", "localhost:20063", 100, 0, 0)
#drvAsynIPPortConfigure("L28", "localhost:20065", 100, 0, 0)
#drvAsynIPPortConfigure("L29", "localhost:20066", 100, 0, 0)
#drvAsynIPPortConfigure("L30", "localhost:20067", 100, 0, 0)
#drvAsynIPPortConfigure("L31", "localhost:20068", 100, 0, 0)
#drvAsynIPPortConfigure("L32", "localhost:20069", 100, 0, 0)
#drvAsynIPPortConfigure("L33", "localhost:20070", 100, 0, 0)
#drvAsynIPPortConfigure("L34", "localhost:20071", 100, 0, 0)
#drvAsynIPPortConfigure("L35", "localhost:20072", 100, 0, 0)
#drvAsynIPPortConfigure("L36", "localhost:20073", 100, 0, 0)
#drvAsynIPPortConfigure("L37", "localhost:20074", 100, 0, 0)
drvAsynIPPortConfigure("L38", "localhost:20077", 100, 0, 0)
#drvAsynIPPortConfigure("L39", "localhost:20079", 100, 0, 0)
#drvAsynIPPortConfigure("L40", "localhost:20080", 100, 0, 0)
#drvAsynIPPortConfigure("L41", "localhost:20081", 100, 0, 0)
#drvAsynIPPortConfigure("L42", "localhost:20082", 100, 0, 0)
drvAsynIPPortConfigure("L43", "localhost:20083", 100, 0, 0)
#drvAsynIPPortConfigure("L44", "localhost:20087", 100, 0, 0)
drvAsynIPPortConfigure("L45", "localhost:20088", 100, 0, 0)
drvAsynIPPortConfigure("L46", "localhost:20089", 100, 0, 0)
drvAsynIPPortConfigure("L47", "localhost:20091", 100, 0, 0)
drvAsynIPPortConfigure("L48", "localhost:20092", 100, 0, 0)
drvAsynIPPortConfigure("L49", "localhost:20093", 100, 0, 0)
drvAsynIPPortConfigure("L50", "localhost:20094", 100, 0, 0)
#drvAsynIPPortConfigure("L51", "localhost:20098", 100, 0, 0)
#drvAsynIPPortConfigure("L52", "localhost:20099", 100, 0, 0)
drvAsynIPPortConfigure("L53", "localhost:20101", 100, 0, 0)
drvAsynIPPortConfigure("L54", "localhost:20107", 100, 0, 0)
drvAsynIPPortConfigure("L55", "localhost:20108", 100, 0, 0)
drvAsynIPPortConfigure("L56", "localhost:20109", 100, 0, 0)
drvAsynIPPortConfigure("L57", "localhost:20118", 100, 0, 0)
#drvAsynIPPortConfigure("L58", "localhost:20121", 100, 0, 0)
drvAsynIPPortConfigure("L59", "localhost:20122", 100, 0, 0)
drvAsynIPPortConfigure("L60", "localhost:20123", 100, 0, 0)
drvAsynIPPortConfigure("L61", "localhost:20124", 100, 0, 0)
#drvAsynIPPortConfigure("L62", "localhost:20129", 100, 0, 0)
drvAsynIPPortConfigure("L63", "localhost:20130", 100, 0, 0)
#drvAsynIPPortConfigure("L64", "localhost:20132", 100, 0, 0)
drvAsynIPPortConfigure("L65", "localhost:20137", 100, 0, 0)
drvAsynIPPortConfigure("L66", "localhost:20138", 100, 0, 0)
drvAsynIPPortConfigure("L67", "localhost:20139", 100, 0, 0)
#drvAsynIPPortConfigure("L68", "localhost:20140", 100, 0, 0)
drvAsynIPPortConfigure("L69", "localhost:20141", 100, 0, 0)
#drvAsynIPPortConfigure("L70", "localhost:20143", 100, 0, 0)
drvAsynIPPortConfigure("L71", "localhost:20144", 100, 0, 0)
drvAsynIPPortConfigure("L72", "localhost:20148", 100, 0, 0)
#drvAsynIPPortConfigure("L73", "localhost:20149", 100, 0, 0)
drvAsynIPPortConfigure("L74", "localhost:20150", 100, 0, 0)
drvAsynIPPortConfigure("L75", "localhost:20157", 100, 0, 0)
#drvAsynIPPortConfigure("L76", "localhost:20158", 100, 0, 0)
#drvAsynIPPortConfigure("L77", "localhost:20159", 100, 0, 0)
#drvAsynIPPortConfigure("L78", "localhost:20160", 100, 0, 0)
drvAsynIPPortConfigure("L79", "localhost:20161", 100, 0, 0)
drvAsynIPPortConfigure("L80", "localhost:20165", 100, 0, 0)
drvAsynIPPortConfigure("L81", "localhost:20166", 100, 0, 0)
drvAsynIPPortConfigure("L82", "localhost:20168", 100, 0, 0)
drvAsynIPPortConfigure("L83", "localhost:20169", 100, 0, 0)
#drvAsynIPPortConfigure("L84", "localhost:20170", 100, 0, 0)
#drvAsynIPPortConfigure("L85", "localhost:20171", 100, 0, 0)
drvAsynIPPortConfigure("L86", "localhost:20172", 100, 0, 0)
drvAsynIPPortConfigure("L87", "localhost:20173", 100, 0, 0)
drvAsynIPPortConfigure("L88", "localhost:20179", 100, 0, 0)
#drvAsynIPPortConfigure("L89", "localhost:20180", 100, 0, 0)
drvAsynIPPortConfigure("L90", "localhost:20181", 100, 0, 0)
drvAsynIPPortConfigure("L91", "localhost:20194", 100, 0, 0)
drvAsynIPPortConfigure("L92", "localhost:20196", 100, 0, 0)
#drvAsynIPPortConfigure("L93", "localhost:20201", 100, 0, 0)
drvAsynIPPortConfigure("L94", "localhost:20202", 100, 0, 0)
drvAsynIPPortConfigure("L95", "localhost:20203", 100, 0, 0)
drvAsynIPPortConfigure("L96", "localhost:20204", 100, 0, 0)
drvAsynIPPortConfigure("L97", "localhost:20205", 100, 0, 0)
#drvAsynIPPortConfigure("L98", "localhost:20206", 100, 0, 0)
#drvAsynIPPortConfigure("L99", "localhost:20207", 100, 0, 0)
drvAsynIPPortConfigure("L100", "localhost:20208", 100, 0, 0)
drvAsynIPPortConfigure("L101", "localhost:20209", 100, 0, 0)
#drvAsynIPPortConfigure("L102", "localhost:20210", 100, 0, 0)
drvAsynIPPortConfigure("L103", "localhost:20212", 100, 0, 0)
drvAsynIPPortConfigure("L104", "localhost:20213", 100, 0, 0)
drvAsynIPPortConfigure("L105", "localhost:20214", 100, 0, 0)
drvAsynIPPortConfigure("L106", "localhost:20215", 100, 0, 0)
#drvAsynIPPortConfigure("L107", "localhost:20216", 100, 0, 0)
#drvAsynIPPortConfigure("L108", "localhost:20217", 100, 0, 0)
drvAsynIPPortConfigure("L109", "localhost:20218", 100, 0, 0)
drvAsynIPPortConfigure("L110", "localhost:20219", 100, 0, 0)
drvAsynIPPortConfigure("L111", "localhost:20222", 100, 0, 0)
drvAsynIPPortConfigure("L112", "localhost:20223", 100, 0, 0)
drvAsynIPPortConfigure("L113", "localhost:20224", 100, 0, 0)
drvAsynIPPortConfigure("L114", "localhost:20225", 100, 0, 0)
drvAsynIPPortConfigure("L115", "localhost:20226", 100, 0, 0)
drvAsynIPPortConfigure("L116", "localhost:20227", 100, 0, 0)
drvAsynIPPortConfigure("L117", "localhost:20228", 100, 0, 0)
drvAsynIPPortConfigure("L118", "localhost:20229", 100, 0, 0)
#drvAsynIPPortConfigure("L119", "localhost:20230", 100, 0, 0)
drvAsynIPPortConfigure("L120", "localhost:20232", 100, 0, 0)
drvAsynIPPortConfigure("L121", "localhost:20233", 100, 0, 0)
drvAsynIPPortConfigure("L122", "localhost:20234", 100, 0, 0)
drvAsynIPPortConfigure("L123", "localhost:20235", 100, 0, 0)
#drvAsynIPPortConfigure("L124", "localhost:20236", 100, 0, 0)
drvAsynIPPortConfigure("L125", "localhost:20237", 100, 0, 0)
drvAsynIPPortConfigure("L126", "localhost:20238", 100, 0, 0)
drvAsynIPPortConfigure("L127", "localhost:20239", 100, 0, 0)
#drvAsynIPPortConfigure("L128", "localhost:20240", 100, 0, 0)
drvAsynIPPortConfigure("L129", "localhost:20247", 100, 0, 0)
drvAsynIPPortConfigure("L130", "localhost:20248", 100, 0, 0)
drvAsynIPPortConfigure("L131", "localhost:20255", 100, 0, 0)
drvAsynIPPortConfigure("L132", "localhost:20256", 100, 0, 0)
drvAsynIPPortConfigure("L133", "localhost:20257", 100, 0, 0)
drvAsynIPPortConfigure("L134", "localhost:20258", 100, 0, 0)
drvAsynIPPortConfigure("L135", "localhost:20259", 100, 0, 0)
#drvAsynIPPortConfigure("L136", "localhost:20260", 100, 0, 0)
#drvAsynIPPortConfigure("L137", "localhost:20261", 100, 0, 0)
#drvAsynIPPortConfigure("L138", "localhost:20262", 100, 0, 0)
drvAsynIPPortConfigure("L139", "localhost:20263", 100, 0, 0)
#drvAsynIPPortConfigure("L140", "localhost:20264", 100, 0, 0)
#drvAsynIPPortConfigure("L141", "localhost:20265", 100, 0, 0)
drvAsynIPPortConfigure("L142", "localhost:20266", 100, 0, 0)
#drvAsynIPPortConfigure("L143", "localhost:20267", 100, 0, 0)
drvAsynIPPortConfigure("L144", "localhost:20268", 100, 0, 0)
drvAsynIPPortConfigure("L145", "localhost:20271", 100, 0, 0)
drvAsynIPPortConfigure("L146", "localhost:20273", 100, 0, 0)
drvAsynIPPortConfigure("L147", "localhost:20274", 100, 0, 0)
drvAsynIPPortConfigure("L148", "localhost:20275", 100, 0, 0)
drvAsynIPPortConfigure("L149", "localhost:20276", 100, 0, 0)
drvAsynIPPortConfigure("L150", "localhost:20277", 100, 0, 0)
drvAsynIPPortConfigure("L151", "localhost:20278", 100, 0, 0)
drvAsynIPPortConfigure("L152", "localhost:20281", 100, 0, 0)
drvAsynIPPortConfigure("L153", "localhost:20286", 100, 0, 0)
#drvAsynIPPortConfigure("L154", "localhost:20287", 100, 0, 0)
drvAsynIPPortConfigure("L155", "localhost:20296", 100, 0, 0)
#drvAsynIPPortConfigure("L156", "localhost:20302", 100, 0, 0)
drvAsynIPPortConfigure("L157", "localhost:20307", 100, 0, 0)
#drvAsynIPPortConfigure("L158", "localhost:20308", 100, 0, 0)
#drvAsynIPPortConfigure("L159", "localhost:20310", 100, 0, 0)
drvAsynIPPortConfigure("L160", "localhost:20311", 100, 0, 0)
#drvAsynIPPortConfigure("L161", "localhost:20312", 100, 0, 0)
#drvAsynIPPortConfigure("L162", "localhost:20313", 100, 0, 0)
drvAsynIPPortConfigure("L163", "localhost:20321", 100, 0, 0)
drvAsynIPPortConfigure("L164", "localhost:20322", 100, 0, 0)
drvAsynIPPortConfigure("L165", "localhost:20323", 100, 0, 0)
drvAsynIPPortConfigure("L166", "localhost:20328", 100, 0, 0)
drvAsynIPPortConfigure("L167", "localhost:20330", 100, 0, 0)
drvAsynIPPortConfigure("L168", "localhost:20335", 100, 0, 0)
drvAsynIPPortConfigure("L169", "localhost:20336", 100, 0, 0)
drvAsynIPPortConfigure("L170", "localhost:20337", 100, 0, 0)

#asynSetTraceMask("L1",-1,0x9)
#asynSetTraceIOMask("L1",-1,0x2)

dbLoadRecords("db/psctrl-nlcta.db")

cd ${TOP}/iocBoot/${IOC}
iocInit

#seq(procServControl,"P=sioc-esb-fb00")
#seq(procServControl,"P=sioc-esb-stn3")
seq(procServControl,"P=sioc-esb-bkh1")
#seq(procServControl,"P=sioc-esb-bkh2")
#seq(procServControl,"P=sioc-esb-acs1")
seq(procServControl,"P=sioc-esb-acs2")
#seq(procServControl,"P=sioc-esb-ppm1")
seq(procServControl,"P=sioc-esb-xps1")
seq(procServControl,"P=sioc-esb-xps2")
seq(procServControl,"P=sioc-esb-scan1")
#seq(procServControl,"P=sioc-esb-tk02")
seq(procServControl,"P=sioc-esb-acs3")
#seq(procServControl,"P=sioc-esb-bkh6")
#seq(procServControl,"P=sioc-esb-bas1")
#seq(procServControl,"P=sioc-esb-bas2")
#seq(procServControl,"P=sioc-esb-bas3")
#seq(procServControl,"P=sioc-esb-bas4")
#seq(procServControl,"P=sioc-esb-bas5")
#seq(procServControl,"P=sioc-esb-bas6")
#seq(procServControl,"P=sioc-esb-bas8")
seq(procServControl,"P=sioc-esb-opem01")
seq(procServControl,"P=sioc-esb-emit0")
seq(procServControl,"P=sioc-esb-bkh7")
seq(procServControl,"P=sioc-esb-bkh8")
seq(procServControl,"P=sioc-esb-acs4")
seq(procServControl,"P=sioc-esb-acs5")
seq(procServControl,"P=sioc-esb-lamb01")
#seq(procServControl,"P=sioc-esb-basl1")
#seq(procServControl,"P=sioc-esb-basl2")
#seq(procServControl,"P=sioc-esb-basl3")
#seq(procServControl,"P=sioc-esb-basl4")
#seq(procServControl,"P=sioc-esb-basl5")
#seq(procServControl,"P=sioc-esb-basl6")
#seq(procServControl,"P=sioc-esb-basl7")
#seq(procServControl,"P=sioc-esb-basl8")
#seq(procServControl,"P=sioc-esb-basl9")
#seq(procServControl,"P=sioc-esb-basl10")
seq(procServControl,"P=sioc-esb-twt1")
#seq(procServControl,"P=ioc-esb-a01")
#seq(procServControl,"P=sioc-esb-wie2")
#seq(procServControl,"P=sioc-esb-wie3")
#seq(procServControl,"P=sioc-esb-wie4")
seq(procServControl,"P=sioc-esb-wie5")
#seq(procServControl,"P=sioc-esb-iris01")
seq(procServControl,"P=sioc-esb-plc1")
seq(procServControl,"P=sioc-esb-llrf1")
seq(procServControl,"P=sioc-esb-acs6")
seq(procServControl,"P=sioc-esb-bkh10")
seq(procServControl,"P=sioc-esb-bkh11")
seq(procServControl,"P=sioc-esb-xps3")
#seq(procServControl,"P=sioc-esb-cud1")
#seq(procServControl,"P=sioc-esb-wie6")
seq(procServControl,"P=sioc-esb-plc2")
seq(procServControl,"P=sioc-esb-bkh13")
seq(procServControl,"P=sioc-esb-bkh14")
seq(procServControl,"P=sioc-esb-gp01")
seq(procServControl,"P=sioc-esb-xps4")
#seq(procServControl,"P=sioc-esb-ppa1")
seq(procServControl,"P=sioc-esb-kn01")
seq(procServControl,"P=sioc-esb-bkh15")
seq(procServControl,"P=sioc-esb-sc01")
#seq(procServControl,"P=sioc-esb-acs7")
seq(procServControl,"P=sioc-esb-acs8")
#seq(procServControl,"P=ioc-esb-tr01")
seq(procServControl,"P=sioc-esb-opem02")
seq(procServControl,"P=sioc-esb-tps01")
seq(procServControl,"P=sioc-esb-sp3930")
#seq(procServControl,"P=sioc-esb-rfpm02")
seq(procServControl,"P=sioc-esb-sdg01")
#seq(procServControl,"P=sioc-esb-sc02")
seq(procServControl,"P=sioc-esb-sc03")
seq(procServControl,"P=sioc-esb-acs9")
#seq(procServControl,"P=sioc-esb-ada01")
seq(procServControl,"P=sioc-esb-thsc01")
seq(procServControl,"P=sioc-esb-sdg02")
#seq(procServControl,"P=sioc-esb-acs10")
#seq(procServControl,"P=sioc-esb-acs11")
#seq(procServControl,"P=sioc-esb-acs12")
seq(procServControl,"P=sioc-esb-acs13")
seq(procServControl,"P=sioc-esb-llrf2")
seq(procServControl,"P=sioc-esb-lsrl")
seq(procServControl,"P=sioc-esb-sdg03")
seq(procServControl,"P=sioc-esb-qe01")
#seq(procServControl,"P=sioc-esb-xps5")
#seq(procServControl,"P=sioc-esb-opem03")
seq(procServControl,"P=sioc-esb-iris02")
seq(procServControl,"P=sioc-esb-thfw01")
seq(procServControl,"P=sioc-esb-bkh16")
#seq(procServControl,"P=sioc-esb-bkh17")
seq(procServControl,"P=sioc-esb-sim900")
seq(procServControl,"P=sioc-esb-ct01")
seq(procServControl,"P=sioc-esb-pv01")
#seq(procServControl,"P=ioc-esb-a02")
seq(procServControl,"P=eioc-esb-pac01")
seq(procServControl,"P=sioc-esb-es01")
seq(procServControl,"P=sioc-esb-pm01")
seq(procServControl,"P=sioc-esb-llog1")
#seq(procServControl,"P=sioc-esb-hppm0")
#seq(procServControl,"P=sioc-esb-hppm1")
seq(procServControl,"P=sioc-esb-hppm2")
seq(procServControl,"P=sioc-esb-hppm3")
#seq(procServControl,"P=sioc-esb-hppm4")
seq(procServControl,"P=sioc-esb-afg1")
seq(procServControl,"P=sioc-sns-hppm0")
seq(procServControl,"P=sioc-esb-lamb02")
seq(procServControl,"P=sioc-esb-lamb03")
#seq(procServControl,"P=sioc-esb-dg05")
#seq(procServControl,"P=sioc-esb-dg06")
seq(procServControl,"P=sioc-esb-phc1")
seq(procServControl,"P=sioc-esb-el01")
seq(procServControl,"P=eioc-esb-pac02")
seq(procServControl,"P=eioc-esb-pad021")
seq(procServControl,"P=eioc-esb-pad022")
seq(procServControl,"P=eioc-esb-pad011")
seq(procServControl,"P=eioc-esb-pac03")
seq(procServControl,"P=eioc-esb-pad031")
seq(procServControl,"P=eioc-esb-pad032")
seq(procServControl,"P=eioc-esb-pad033")
#seq(procServControl,"P=ioc-esb-tr10")
seq(procServControl,"P=sioc-esb-epsc01")
seq(procServControl,"P=ioc-esb-a03")
seq(procServControl,"P=sioc-esb-epsc02")
seq(procServControl,"P=sioc-esb-lamb04")
#seq(procServControl,"P=sioc-esb-tfit01")
seq(procServControl,"P=sioc-esb-phc2")
seq(procServControl,"P=sioc-esb-phc3")
seq(procServControl,"P=sioc-esb-phc4")
#seq(procServControl,"P=sioc-esb-lsrl2")
seq(procServControl,"P=sioc-esb-avac01")
seq(procServControl,"P=sioc-esb-al01")
seq(procServControl,"P=sioc-esb-spm01")
seq(procServControl,"P=sioc-esb-kn02")
seq(procServControl,"P=ioc-esb-a04")
seq(procServControl,"P=sioc-esb-lamb06")
seq(procServControl,"P=sioc-esb-bkh18")
#seq(procServControl,"P=sioc-esb-stnPAx0")
#seq(procServControl,"P=sioc-esb-stnPAx1")
#seq(procServControl,"P=sioc-esb-stnPAx2")
seq(procServControl,"P=sioc-esb-stnPAx3")
#seq(procServControl,"P=sioc-esb-stnPAs0")
#seq(procServControl,"P=sioc-esb-stnPAs1")
seq(procServControl,"P=sioc-esb-acs14")
#seq(procServControl,"P=sioc-esb-kn00")
seq(procServControl,"P=sioc-esb-kn03")
seq(procServControl,"P=sioc-esb-stn1")
seq(procServControl,"P=sioc-esb-tps02")
seq(procServControl,"P=sioc-esb-tps03")
seq(procServControl,"P=sioc-esb-conf1")
seq(procServControl,"P=sioc-esb-stn0")
seq(procServControl,"P=eioc-esb-pac00")
seq(procServControl,"P=eioc-esb-pad001")
seq(procServControl,"P=sioc-esb-stn2")
seq(procServControl,"P=sioc-esb-avac02")
#seq(procServControl,"P=sioc-esb-thsc02")
seq(procServControl,"P=sioc-esb-psrv01")
#seq(procServControl,"P=sioc-esb-lsc01")
seq(procServControl,"P=sioc-esb-pv02")
#seq(procServControl,"P=sioc-esb-sc04")
#seq(procServControl,"P=sioc-esb-stats01")
seq(procServControl,"P=sioc-esb-lake01")
#seq(procServControl,"P=sioc-esb-bkh98")
#seq(procServControl,"P=sioc-esb-dg01")
seq(procServControl,"P=sioc-esb-pv03")
seq(procServControl,"P=sioc-esb-pv04")
seq(procServControl,"P=sioc-esb-pv05")
seq(procServControl,"P=sioc-esb-pv06")
seq(procServControl,"P=sioc-esb-stats02")
seq(procServControl,"P=sioc-esb-avac03")
seq(procServControl,"P=sioc-esb-avac04")
seq(procServControl,"P=sioc-esb-avac05")
