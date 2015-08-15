# LP3 v0.91.1 TEST
The *Local Package Processing Program*, once known as the [CKAN](https://github.com/ckan/ckan) [Local Package Installing Plug-in](https://github.com/Gustavo6046/CKAN_LPIP), is a small program which creates and installs files known as **Local Package Files** (extension **.lpf**). It is acessed by Windows 2000 or newer's command line and has the following syntax:
 *call lp3.cmd -i/-c input output [-d]*

##Syntax highlight
Here, if the attribute is *-i*, then it will install (extract) the existing LPF package file in path *input* inside the folder *output*. If it instead is *-c* then it will add every file in folder *input* to a new LPF file in the path *output*. If neither are specified as initial attribute or are something else then the program won't run, instead displaying a error message and increasing errorlevel by 1.
* If it includes option *-d*, it will delete the original package which was installed (only if initial attribute is *-i*, or else it won't do anything).
