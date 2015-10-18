#!/bin/dash

./packages.minimal.sh
./packages.x11.sh
./packages.perf.sh

apt-get --no-install-recommends install \
   asciidoc                             \
   autoconf                             \
   automake                             \
   build-essential                      \
   gnupg-agent                          \
   inotify-tools                        \
   libcurl4-openssl-dev                 \
   libdir-self-perl                     \
   libgmime-2.6-dev                     \
   libgpgme11-dev                       \
   libncursesw5-dev                     \
   libnotmuch-dev                       \
   libpam0g-dev                         \
   libtalloc-dev                        \
   libtokyocabinet-dev                  \
   libtool                              \
   libu2f-host-dev                      \
   libu2f-server-dev                    \
   libxapian-dev                        \
   lua-filesystem                       \
   lynx                                 \
   mitmproxy                            \
   msmtp                                \
   notmuch                              \
   notmuch-mutt                         \
   openvpn                              \
   python-gpgme                         \
   u2f-host                             \
   u2f-server                           \
   xmlto                                \
   xsltproc
