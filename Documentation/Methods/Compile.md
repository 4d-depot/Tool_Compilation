<!-- Type your summary here -->
## Description

This methods allows you to compile the project specified in $param.path with the options passed in $param.options.

| Parameter | Type | Description |
| --- | --- | --- |
| $param | Object | |
| | | $param.path: path of the project to compile (mandatory attribut) |
| | | $param.options: Option passed to Compile Project command |

## Example

```4d
$realVal:=Get database parameter(User param value; $userParam)
$oParam:=JSON Parse($userParam)
Compile($oParam)
```
