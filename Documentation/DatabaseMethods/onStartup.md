## Description

This project need to call with the following parameters:

| Options | Description |
| --- | --- |
| 4D | path of the 4D application |
| -- structure | path of this project file
| --user-param | stringily object that contains: |
| | * path: path of the project to compile (mandatory attribut)
| | * options: Option passed to Compile Project command (optional attribut) |
| | * quit : pass false to not close 4D after compilation, useful for tests, by default 4D closes after execution (optional attribut) |
| --headless | To launch 4D without interface - optional parameter |
| --dataless | To launch 4D without data |

## Examples

Here are some examples of command lines, don’t forget to adapt the paths.

### Launch a check syntax:

* macOS

```
/.../Contents/MacOS/4D
--structure /.../testlineCommand.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\",\"options\":{\"targets\":[]}}"
--headless --dataless
2>desktop/errlog.txt 1>desktop/infolog.txt
```

* Windows

```
C:\...\4D\4D.exe
--structure C:\...\Tool_Compilation.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\",\"options\":{\"targets\":[]}}"
--headless --dataless
2>C:\...\errlog.txt 1>C:\...\infolog.txt
```

### Make a compilation with the default settings:

* macOS

```
/.../Contents/MacOS/4D
--structure /.../testlineCommand.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\"}"
--headless --dataless
2>desktop/errlog.txt 1>desktop/infolog.txt
```

* Windows

```
C:\...\4D\4D.exe
--structure C:\...\Tool_Compilation.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\"}"
--headless --dataless
2>C:\...\errlog.txt 1>C:\...\infolog.txt
```

### Make a compilation with options passed to the Compile project command:

* macOS

```
/.../Contents/MacOS/4D
--structure /.../testlineCommand.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\",\"options\":{\"targets\":[\"x86_64_generic\"]}}"
--headless --dataless
2>desktop/errlog.txt 1>desktop/infolog.txt
```

* Windows

```
C:\...\4D\4D.exe
--structure C:\...\Tool_Compilation.4DProject
--user-param "{\"path\":\"/.../myProject.4DProject\",\"options\":{\"targets\":[\"x86_64_generic\"]}}"
--headless --dataless
2>C:\...\errlog.txt 1>C:\...\infolog.txt
```
