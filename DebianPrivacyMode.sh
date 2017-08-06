#!/usr/bin/env bash

# Debian privacy mode upgrade. Installing tools for privacy & security and removing some packages

# FIRST install kali-anonsurf & run this script as root


apt update
apt -y install apt-transport-tor

# If you need GPU driver (Nvidia, Radeon, etc.), add non-free after contrib to install it

echo "# Debian .onion Tor network mirrors. More info https://onion.debian.org/ \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch            main contrib \

deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-updates    main contrib  \

deb  tor+http://sgvtcaew4bxjd7ln.onion/debian-security stretch/updates    main contrib \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-backports  main contrib" > /etc/apt/sources.list

apt update && apt -y dist-upgrade && apt -y install aircrack-ng apt-transport-https apt-transport-tor \
audacity bleachbit brasero \
build-essential gcc gcr \
cpp cpp-6 cryptsetup cryptsetup-bin \
curl dasher dirmngr g++ gimp \
geoip-database git \
gnupg gnupg1 gnupg2 \
gpgv gtkhash inkscape keepassx libgpg-error0 \
libgpgme11 hopenpgp-tools libgpgmepp-doc \
libssh-gcrypt-4 liferea macchanger \
make mat net-tools nmap \
onioncircuits openpgp-applet openssl \
pidgin pitivi seahorse \
scdaemon tor torchat transmission \
traverso vlc whois wireshark \
xul-ext-torbirdy xul-ext-ublock-origin zip \
zulucrypt-cli zulucrypt-gui

# or remove packages from this list manually. If you don't use your workstation as FTP-server, Telnet-server, etc., remove it. For example: # apt remove jboss-autopwn
apt -y remove avahi-daemon cups minissdpd \
nfspy rpcbind samba samba-common telnet \
tracker virt-viewer vlc-plugin-samba
apt update && apt -y dist-upgrade