If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").resizeWorkingPane 92,32,false
session.findById("wnd[0]/tbar[0]/okcd").text = "iw28"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/chkDY_OFN").selected = false
session.findById("wnd[0]/usr/ctxtQMART-LOW").text = "z*"
session.findById("wnd[0]/usr/ctxtQMART-LOW").setFocus
session.findById("wnd[0]/usr/ctxtQMART-LOW").caretPosition = 2
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtIWERK-LOW").text = "0105"
session.findById("wnd[0]/usr/ctxtIWERK-LOW").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtARBPL-LOW").setFocus
session.findById("wnd[0]/usr/ctxtARBPL-LOW").caretPosition = 0
session.findById("wnd[0]/usr/btn%_ARBPL_%_APP_%-VALU_PUSH").press
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,0]").text = "020*"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,1]").text = "030*"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,2]").text = "080*"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,2]").setFocus
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,2]").caretPosition = 4
session.findById("wnd[1]/tbar[0]/btn[8]").press
session.findById("wnd[0]/usr/ctxtVARIANT").text = "/mdeng"
session.findById("wnd[0]/usr/ctxtVARIANT").setFocus
session.findById("wnd[0]/usr/ctxtVARIANT").caretPosition = 6
session.findById("wnd[0]").sendVKey 0
