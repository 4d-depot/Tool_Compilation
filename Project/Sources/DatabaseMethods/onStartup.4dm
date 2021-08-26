
LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - Start script\n"; Information message:K38:1)

If (Shift down:C543)
	TRACE:C157
End if 

var $userParam : Text
var $oParam : Object
var $quit : Boolean
$quit:=True:C214

$realVal:=Get database parameter:C643(User param value:K37:94; $userParam)
If ($userParam#"")
	LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - user-param: "+$userParam+"\n"; Information message:K38:1)
	$oParam:=JSON Parse:C1218($userParam)
	// $oParam.path: path of the project to compile (mandatory attribut)
	// $oParam.options : Option passed to Compile Project command (optional attribut)
	// $oParam.quit : pass false to not close 4D after compilation, useful for tests, by default 4D closes after execution (optional attribut)
	
	Compile($oParam)
	
	If (Not:C34(Undefined:C82($oParam.quit)))
		$quit:=$oParam.quit
	End if 
	
End if 

LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - End script\n"; Information message:K38:1)


If ($quit)
	QUIT 4D:C291
End if 

