scriptName SkyScriptTest extends SkyUnitTest

function BeforeEach()
    if JContainers.fileExistsAtPath("SkyScript.log")
        JContainers.removeFileAtPath("SkyScript.log")
    endIf
endFunction

string property LogContent
    string function get()
        if JContainers.fileExistsAtPath("SkyScript.log")
            return MiscUtil.ReadFromFile("SkyScript.log")
        else
            return ""
        endIf
    endFunction
endProperty
