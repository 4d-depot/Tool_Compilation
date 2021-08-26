//%attributes = {}
//  Help method to generate the user param string from the command line

var $param : Object
var $userparam : Text

$param:=New object:C1471
$param.path:=Folder:C1567(fk documents folder:K87:21).file("Database/testv19/Project/testv19.4DProject").path  // Path of project to compile
$param.doQuit:=False:C215  // Quit 4D or not at the end - Useful for testing
$param.options:=New object:C1471  // options object passed to Compile Project command
$param.options.targets:=New collection:C1472()  //possible values: "x86_64_generic", "arm64_macOS_lib". Pass an empty collection to execute syntax check only
//$param.options.typeInference //"all": Type all variables, "locals": Process and interprocess are typed, "none": All variables are typed
//$param.options.defaultTypeForNumerics // Possible value: Is real or Is longint
//$param.options.defaultTypeForButtons // Possible value: Is real or Is longint
//$param.options.generateSymbols // True to generate symbol information in the .symbols returned object
//$param.options.generateTypingMethods // "reset" or "append" to generate typing methods. If value is "append", existing variable declarations won't be modified (compiler window behavior). If value is "reset" existing variable declarations are removed beforehand.
//$param.options.components:=New collection  //Collection of 4D.File objects to dependent components (must be already compiled)
//$param.options.components.push(File("..."))

$userparam:=JSON Stringify:C1217($param)

