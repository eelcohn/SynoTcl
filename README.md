# synotcl
Tcl runtime packages for Synology DSM

Binary files can be found under 'Releases'.

Please do not use release v8.6.6-1 since it's kinda buggy.

The source of these packages can be found at https://github.com/SynoCommunity/spksrc/

To create these packages I've used Fedora 25 Workstation and executed the following commands:

```
sudo dnf install glibc.i686 patch
git clone https://github.com/SynoCommunity/spksrc.git
rm -rf spksrc/cross/tcl/
rm -rf spksrc/cross/tcltls/
rm -rf spksrc/spk/tcl/
git clone https://github.com/eelcohn/SynoTcl.git --branch v8.6.7-1-20170809
mv SynoTcl/cross/tcl/ spksrc/cross/
mv SynoTcl/cross/tcltls/ spksrc/cross/
mv SynoTcl/spk/tcl/ spksrc/spk/
mv SynoTcl/local.mk spksrc/
cd spksrc/spk/tcl/
make all-archs
```
