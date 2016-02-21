cd $LFS/sources
tar -xvf gettext-0.19.7.tar.*
cd gettext-0.19.7
cd gettext-tools
EMACS="no" ./configure --prefix=/tools --disable-shared
make -C gnulib-lib
make -C intl pluralx.c
make -C src msgfmt
make -C src msgmerge
make -C src xgettext
cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin
cd ..
rm -rf gettext-0.19.7