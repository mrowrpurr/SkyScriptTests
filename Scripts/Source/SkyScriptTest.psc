scriptName SkyScriptTest extends SkyUnitTest

function BeforeEach()
    _storedIdsArray = JArray.object()
    JValue.retain(_storedIdsArray)
    _contextIdsArray = JArray.object()
    JValue.retain(_contextIdsArray)
endFunction

function AfterEach()
    JValue.release(_storedIdsArray)
    if JArray.count(_contextIdsArray)
        int count = JArray.count(_contextIdsArray)
        int i = 0
        while i < count
            SkyScriptContext.Dispose(JArray.getObj(_contextIdsArray, i))
        endWhile
    endIf
    JValue.release(_contextIdsArray)
endFunction

string property SKYSCRIPT_ROOT
    string function get()
        return "Data/SkyScript"
    endFunction
endProperty

string function PathToType(string typeFile)
    return SKYSCRIPT_ROOT + "/Types/" + typeFile + ".json"
endFunction

int _storedIdsArray
int _contextIdsArray

; Persist the provided JContainer - it will be released after the test finished.
int function Store(int object)
    ; Add to a retained array ~ array is released after tests.
    JArray.addObj(_storedIdsArray, object) 
    return object
endFunction

int function NewContext()
    int context = SkyScriptContext.Create()
    JArray.addObj(_contextIdsArray, context)
    return context
endFunction