//%attributes = {}

#DECLARE($param : Object)

var $status : Object
var $compileBase : 4D:C1709.File

If ($param.path#Null:C1517)
	$compileBase:=File:C1566($param.path)
	
	If ($compileBase.exists)
		
		If ($param.options=Null:C1517)
			$status:=Compile project:C1760($compileBase)
		Else 
			$status:=Compile project:C1760($compileBase; $param.options)
		End if 
		
		If ($status.status=False:C215)
			LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - "+JSON Stringify:C1217($status)+"\n"; Error message:K38:3)
		Else 
			LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - "+JSON Stringify:C1217($status)+"\n"; Information message:K38:1)
		End if 
		
	Else 
		LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - Incorrect project path:"+$param.path+"\n"; Error message:K38:3)
		
	End if 
	
Else 
	LOG EVENT:C667(Into system standard outputs:K38:9; Timestamp:C1445+" - Missing the path of the project to compile\n"; Error message:K38:3)
End if 

