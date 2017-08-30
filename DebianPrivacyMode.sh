#!/usr/bin/env bash

# Debian privacy mode upgrade. Installing tools for privacy & security and removing some packages

# FIRST install kali-anonsurf, start anonsurf (# anonsurf start)  & run this script (as root)


apt update
apt -y install apt-transport-tor

# If you need GPU driver (Nvidia, Radeon, etc.), add non-free after contrib to install it. Change "stretch" to "jessie" or other codename of your version, or use this mirrors to upgrade from 8 Jessie.

echo "# Debian .onion Tor network mirrors. More info https://onion.debian.org/ \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch            main contrib \

deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-updates    main contrib  \

deb  tor+http://sgvtcaew4bxjd7ln.onion/debian-security stretch/updates    main contrib \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-backports  main contrib" > /etc/apt/sources.list

apt update && apt -y dist-upgrade && apt -y install aircrack-ng audacity bleachbit \
brasero build-essential gcc gcr \
cpp cpp-6 cryptsetup cryptsetup-bin \
curl dasher dirmngr \
etherape g++ gimp \
geoip-database git \
gnupg gnupg1 gnupg2 gobby \
gpgv gtkhash inkscape keepassx 
keyringer libgpg-error0 \
libgpgme11 hopenpgp-tools libgpgmepp-doc \
libssh-gcrypt-4 liferea luksipc macchanger \
make mat monkeysign net-tools nmap \
onioncircuits openpgp-applet openssl \
paperkey pidgin pitivi pwgen seahorse \
scdaemon ssss tor torchat transmission \
traverso vlc whois wireshark \
xul-ext-https-everywhere xul-ext-torbirdy xul-ext-ublock-origin \
xul-ext-noscript xul-ext-self-destructing-cookies zip \
zulucrypt-cli zulucrypt-gui

# or remove packages from this list manually. If you don't use your workstation as file storage server, FTP-server, Telnet-server, etc., remove it. For example: # apt remove jboss-autopwn samba
apt -y remove avahi-daemon cups minissdpd \
nfspy rpcbind samba samba-common telnet \
tracker virt-viewer vlc-plugin-samba && \
apt -y autoremove
apt update && apt -y dist-upgrade