devbox Cookbook
===============
The devbox cookbook configures Windows and Linux workstations for development. It configures the following features on a system:

* Git for source control
* A text editor
* Terminal (if your system doesn't have a good one)
* Package manager (if your system doesn't have one)
* Build (e.g. compilers) tools (if your system doesn't have them)
* Optional features for interactive desktop use such as a web browser and remote desktop (if your system doesn't have it)
* Other environmental settings optimized for development

Requirements
------------
This cookbook requires one of the following operating systems: Windows, Ubuntu, CentOS, or OS X. Other operating systems may also work with the cookbook.

Usage
-----
#### devbox::default

Add this cookbook to your runlist and converge the node -- you'll get all the non-optiona features the cookbook has to offer.

#### devbox::desktop
Just a text editor, web browser, and remote desktop capability.

#### devbox::console
Installs ConEmu for Windows as an alternative to the built-in terminal (console) in Windows.

#### devbox::readline
On Windows, installs the PSReadline module for Readline emulation with PowerShell.

License and Authors
-------------------
Copyright:: Copyright (c) 2013 Adam Edwards

License:: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

