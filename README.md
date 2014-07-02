Experiments around reproducible builds in Debian following the notes
at the page

    https://wiki.debian.org/ReproducibleBuilds

It's possible to use a ``vagrant`` machine with all configured to build
a debian package in a reproducible way.

Example:

    $ apt-get source hello
    $ ./build.sh hello-2.9 r1
    $ ./build.sh hello-2.9 r2
    $ ./misc/diffp r1/hello_2.9-1_amd64.changes r2/hello_2.9-1_amd64.changes
