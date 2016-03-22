#!/bin/dash

./packages.rm.sh
./packages.minimal.sh
./packages.x11.sh
./packages.perf.sh

exec apt-get --no-install-recommends    \
                             install -y \
   asciidoc                             \
   at                                   \
   autoconf                             \
   automake                             \
   build-essential                      \
   dictd                                \
   dict                                 \
   dict-gcide                           \
   gnupg-agent                          \
   inotify-tools                        \
   libcurl4-openssl-dev                 \
   libdir-self-perl                     \
   libemail-address-perl                \
   libgmime-2.6-dev                     \
   libgpgme11-dev                       \
   libncursesw5-dev                     \
   libnotmuch-dev                       \
   libpam0g-dev                         \
   libpam-u2f                           \
   pamu2fcfg                            \
   libtalloc-dev                        \
   libtokyocabinet-dev                  \
   libtool                              \
   libxapian-dev                        \
   lua-filesystem                       \
   lynx                                 \
   mitmproxy                            \
   msmtp                                \
   ssmtp                                \
   notmuch                              \
   notmuch-mutt                         \
   openvpn                              \
   python-gpgme                         \
   xmlto                                \
   xsltproc
