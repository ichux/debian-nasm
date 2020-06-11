A Docker container for writing NASM x86 Assembly and C programs. It contains the following packages:

```shell script
binutils binutils-common binutils-x86-64-linux-gnu build-essential bzip2 cpp
  cpp-8 dirmngr dpkg-dev fakeroot file g++ g++-8 gcc gcc-8 gdb gnupg
  gnupg-l10n gnupg-utils gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf
  gpgsm libalgorithm-diff-perl libalgorithm-diff-xs-perl
  libalgorithm-merge-perl libasan5 libassuan0 libatomic1 libbabeltrace1
  libbinutils libc-dev-bin libc6-dbg libc6-dev libcc1-0 libdpkg-perl libdw1
  libelf1 libexpat1 libfakeroot libfile-fcntllock-perl libgcc-8-dev
  libgdbm-compat4 libgdbm6 libglib2.0-0 libglib2.0-data libgomp1 libgpm2
  libicu63 libipt2 libisl19 libitm1 libksba8 libldap-2.4-2 libldap-common
  liblocale-gettext-perl liblsan0 libmagic-mgc libmagic1 libmpc3 libmpdec2
  libmpfr6 libmpx2 libnpth0 libperl5.28 libpopt0 libpython3.7
  libpython3.7-minimal libpython3.7-stdlib libquadmath0 libreadline7
  libsasl2-2 libsasl2-modules libsasl2-modules-db libsqlite3-0 libssl1.1
  libstdc++-8-dev libtsan0 libubsan1 libxml2 linux-libc-dev lsb-base make
  manpages manpages-dev mime-support nasm netbase patch perl perl-modules-5.28
  pinentry-curses readline-common shared-mime-info vim vim-common vim-runtime
  xdg-user-dirs xxd xz-utils
```
## How to use
1. Download the [accompanying files](https://gist.github.com/ichux/713bad470794872b463060ed50f81e42/archive/06b53c6591db0ad8e8217560deaceff34dd11e76.zip)
2. Extract the `.zip`, rename it and `cd` into that directory through your terminal
3. Run `make volume id=$PWD/source`
4. Run `make pull`
5. Run `make bash` and this will create a container you can work with.
6. Now, type `make clr i=welcome`, it's also inside the README.md file that you will find in the source directory
7. You should see `Welcome` printed on your terminal