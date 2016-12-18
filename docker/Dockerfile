FROM debian:jessie
MAINTAINER Javier Loureiro <derethor@gmail.com>


RUN set -e \
	&& apt-get --yes update \
	&& apt-get --yes install apt-utils \
	&& apt-get --yes install sudo git-core bsdmainutils build-essential libssl-dev libncurses5-dev unzip gawk gettext subversion wget python2.7 file \
	&& apt-get --yes clean \
	&& rm -rf /var/lib/apt/lists/*

RUN set -e \
	&& useradd openwrt \
	&& echo 'openwrt ALL=NOPASSWD: ALL' >> /etc/sudoers

USER openwrt
WORKDIR /home/openwrt

#RUN sudo -iu openwrt sh -c \
#	'\
#	cd /usr/local/openwrt \
#	&& git init \
#	&& git remote add origin https://github.com/openwrt/openwrt.git \
#	&& git pull origin master \
#	'


#RUN set -e \
#	&& git init \
#	&& git remote add origin https://github.com/openwrt/openwrt.git \
#	&& git pull origin master

VOLUME ["/home/openwrt"]


