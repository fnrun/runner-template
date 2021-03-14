# fnrun runner template

This is a project template for building a custom runner for fnrun systems. To
get started, click the "Use this template" button on this project's GitHub
page or clone this repository. 

## How to use this template
First, you should edit the module name in the [go.mod](./go.mod) file to be
something appropriate for your project.

Next, in the [main.go](./main.go) file, you should register new sources,
middlewares, and fns as is necessary for your runner. The file will initially
contain the same runner setup as found in the official fnrunner.

This project contains a Makefile that builds static executables for Linux, 
macOS, and Windows. You can build all three by simply running `make`. The make
script will create executables and place them in a `target` directory which is
included in the .gitignore for this project.

## License
This template is released under the [MIT License](LICENSE).