scriptName SSTest_Contexts extends SkyScriptTest

function Tests()
    Test("can be created and disposed of")
    Test("can include variables")
    Test("can reference variables in parent contexts")
    Test("global context contains references to type objects")
    Test("can evaluate expressions in context")
endFunction
