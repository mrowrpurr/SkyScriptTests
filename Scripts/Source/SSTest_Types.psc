scriptName SSTest_Types extends SkyScriptTest

function Tests()
    Test("Can import type into context")
endFunction

function Can_Import_Type_Into_Context()
    int context = NewContext()

    


    ; string[] memberNames = SkyScriptTypes.GetMemberNames("SimpleClass", includePrivate = true, includeParents = true)
    ; ExpectStringArray(memberNames).To(ContainText("\"someField\""))
    ; ExpectStringArray(memberNames).To(ContainText("\"anotherField\""))
    ; ExpectStringArray(memberNames).To(ContainText("\"someFunction()\""))
    ; ExpectStringArray(memberNames).To(ContainText("\"privateField\""))
    ; ExpectStringArray(memberNames).To(ContainText("\"privateFunction()\""))
    ; ExpectStringArray(memberNames).Not().To(ContainText("\"toString()\"")) ; <--- not included because the file wasn't parsed...
endFunction
