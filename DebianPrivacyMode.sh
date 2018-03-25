#!/usr/bin/env bash

# Root access checking

if [ `id -u` -ne 0 ]; then
echo "Script must be ran as superuser only"
exit 1
fi

# Debian privacy mode upgrade. Installing tools for privacy & security and removing some packages

# FIRST install kali-anonsurf, start anonsurf (# anonsurf start)  & run this script (as root)


apt update
apt -y install apt-transport-tor git
apt install -t stretch-backports tor torsocks -y

# If you need GPU driver (Nvidia, Radeon, etc.), add non-free after contrib to install it. Change "stretch" to "jessie" or other codename of your version, or use this mirrors to upgrade from 8 Jessie.

echo "# Debian .onion TOR network mirrors. More info https://onion.debian.org/ \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch            main contrib \

deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-updates    main contrib  \

deb  tor+http://sgvtcaew4bxjd7ln.onion/debian-security stretch/updates    main contrib \


deb  tor+http://vwakviie2ienjx6t.onion/debian          stretch-backports  main contrib" > /etc/apt/sources.list


apt update && apt -y dist-upgrade && apt -y install aircrack-ng audacity bleachbit \
brasero build-essential gcc gcr \
cpp cpp-6 cryptsetup cryptsetup-bin \
connect-proxy curl dasher \
dirmngr etherape g++ gimp \
geoip-database gnupg \
gnupg1 gnupg2 gobby \
gpgv gtkhash inkscape keepassx \
keyringer libgpg-error0 libgpgme11 \
hopenpgp-tools libgpgmepp-doc libnotify-bin \
libssh-gcrypt-4 liferea luksipc macchanger \
mediainfo mediainfo-gui \
make mat monkeysign \
nautilus-wipe net-tools nmap \
obfsproxy obfs4proxy onioncircuits \
openpgp-applet openssl \
paperkey pidgin pitivi \
pwgen seahorse secure-delete \
scdaemon ssss tor torchat transmission \
traverso vlc whois wireshark \
xul-ext-https-everywhere xul-ext-torbirdy xul-ext-ublock-origin \
xul-ext-noscript xul-ext-self-destructing-cookies xul-ext-torbirdy \
zip zulucrypt-cli zulucrypt-gui

# Removing dangerous packages

if [ -z `dpkg -l | grep avahi-daemon`]; then
apt -y remove avahi-daemon
fi
if [ -z `dpkg -l | grep cups`]; then
apt -y remove cups
fi
if [ -z `dpkg -l | grep nfspy`]; then
apt -y remove nfspy
fi
if [ -z `dpkg -l | grep rpcbind`]; then
apt -y remove rpcbind
fi
if [ -z `dpkg -l | grep samba`]; then
apt -y remove samba
fi
if [ -z `dpkg -l | grep samba-common`]; then
apt -y remove samba-common
fi
if [ -z `dpkg -l | grep telnet`]; then
apt -y remove telnet
fi
if [ -z `dpkg -l | grep tracker`]; then
apt -y remove tracker
fi
if [ -z `dpkg -l | grep virt-viewer`]; then
apt -y remove virt-viewer
fi
if [ -z `dpkg -l | grep vlc-plugin-samba`]]; then
apt -y remove vlc-plugin-samba
fi
apt -y autoremove

apt install -t stretch-backports linux-image linux-headers -y
