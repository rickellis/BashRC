# BashRC

Linux and Mac cross-platform .bashrc

Since I use both Arch Linux and Mac it makes my life easier to have shared terminal commands and settings. I use separate includes for different categories of commands and settings.

Anything that is platform specific goes into either __.bash_linux__ or __.bash_mac__. When those files are loaded an OS check happens and any commands that are not available on the active OS get ignored.

I use __.bash_extras__ for functions that are specific to my needs. A blank version is included here.

### License

This code is made available publicly in the hope that it might be useful. You are free to use is for any purpose. No attribution required.