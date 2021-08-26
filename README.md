# Tool_Compilation

Since 4D v19, you can start the compilation of a project with a simple command. This tool allows you to launch a compilation by command line since 4D v19.

Find more information on [the blog post]( https://blog.4d.com/how-to-automate-the-compilation/).

## Description

This project need to launch by command line with the following parameters:

| Options | Description |
| --- | --- |
| 4D | path of the 4D application (mandatory attribut) |
| --structure | path of this project file (mandatory attribut)
| --user-param | stringily object that contains: |
| | * path: path of the project to compile (mandatory attribut)
| | * options: Option passed to Compile Project command (optional attribut) |
| | * quit : pass false to not close 4D after compilation, useful for tests, by default 4D closes after execution (optional attribut) |
| --headless | To launch 4D without interface (optional parameter) |
| --dataless | To launch 4D without data (mandatory attribut) |

For more detail, read the documentation of [“On Startup” database method](./Documentation/DatabaseMethods/onStartup.md).
