# synotcl
Tcl runtime packages for Synology DSM

Binary files can be found under 'Releases'. Please use release v8.6.6-2 since the first release is kinda buggy.

The source of these packages can be found at https://github.com/SynoCommunity/spksrc/

To create these packages I've used Fedora 24 and executed the following commands:

```
sudo dnf install glibc.i686 patch
git clone https://github.com/SynoCommunity/spksrc.git
cd spksrc/spk/tcl/
make all-archs
```
