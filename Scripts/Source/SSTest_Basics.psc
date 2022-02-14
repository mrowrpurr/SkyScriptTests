scriptName SSTest_Basics extends SkyScriptTest

function Tests()
    Test("Can Log from Script to Log File").Fn(Can_Log_From_Script_To_Log_File())
endFunction

function Can_Log_From_Script_To_Log_File()
    ExpectString(LogContent).To(BeEmpty())

    SkyScript.RunText("{\"log\":\"Hello log!\"}")

    ExpectString(LogContent).To(ContainText("Hello log!"))
endFunction
