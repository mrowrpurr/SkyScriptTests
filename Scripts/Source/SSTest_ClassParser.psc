scriptName SSTest_ClassParser extends SkyScriptTest ; TODO rename to SSTest_Types or SSTest_Classes

function Tests()
    Test("Parsing MySimpleClass")
    Test("Parsing MySimpleClass and extension to MySimpleClass")
    Test("Fields and properties and functions starting with _ are private")
endFunction

; function Parsing_MySimpleClass()
;     SkyScriptTypes.ParseClassFile(PathToTypeFile("SimpleClass"))

;     string[] memberNames = SkyScriptTypes.GetMemberNames("SimpleClass", includePrivate = true, includeParents = true)
;     ExpectStringArray(memberNames).To(ContainText("\"someField\""))
;     ExpectStringArray(memberNames).To(ContainText("\"anotherField\""))
;     ExpectStringArray(memberNames).To(ContainText("\"someFunction()\""))
;     ExpectStringArray(memberNames).To(ContainText("\"privateField\""))
;     ExpectStringArray(memberNames).To(ContainText("\"privateFunction()\""))
;     ExpectStringArray(memberNames).Not().To(ContainText("\"toString()\"")) ; <--- not included because the file wasn't parsed...
; endFunction













































; function Parsing_MySimpleClass_FIRST_THOUGHTS_BUT_THIS_IS_THE_OBJECT_AND_WILL_BE_TOO_SLOW_PROTOTYPE_COPY_STYLE()
;     ; Parse a class file to an object which can be added to a context as a variable
;     int object = SkyScriptClassParser.ParseFile(PathToTypeFile("SimpleClass"))

;     ; The object is an instance of "Class"
;     ExpectString(SkyScriptReflection.GetTypeName(object)).To(Equal("Class"))

;     ; Because this class has no static members defined in the class definition
;     ; te only members are actually new() and name
;     string[] members = SkyScriptReflection.GetMemberNames(object)
;     ExpectStringArray(members).To(ContainText("\"new()\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"name\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"class\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"toString()\"")) ; TODO - Change this to IncludeString() when available

;     ; new() should be a method and name should be a field. and .class is a field every object has as well.
;     ExpectString(SkyScriptReflection.GetMemberType(SkyScriptReflection.GetMember(object, "name"))).To(EqualString(SkyScriptReflection.MEMBER_TYPE_FIELD()))
;     ExpectString(SkyScriptReflection.GetMemberType(SkyScriptReflection.GetMember(object, "new()"))).To(EqualString(SkyScriptReflection.MEMBER_TYPE_FUNCTION()))
;     ExpectString(SkyScriptReflection.GetMemberType(SkyScriptReflection.GetMember(object, "class"))).To(EqualString(SkyScriptReflection.MEMBER_TYPE_FIELD()))
;     ExpectString(SkyScriptReflection.GetMemberType(SkyScriptReflection.GetMember(object, "toString()"))).To(EqualString(SkyScriptReflection.MEMBER_TYPE_FUNCTION()))

;     ; Create an instance
;     int instance = SkyScriptTypes.CreateInstance("SimpleClass")

;     ; Because this *is* an instance of the class, it should have members for the defined instance fields/functions
;     members = SkyScriptReflection.GetMemberNames(instance)
;     ExpectStringArray(members).To(ContainText("\"new()\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"name\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"class\"")) ; TODO - Change this to IncludeString() when available
;     ExpectStringArray(members).To(ContainText("\"toString()\"")) ; TODO - Change this to IncludeString() when available
; endFunction
