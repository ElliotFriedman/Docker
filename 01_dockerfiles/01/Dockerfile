From debian:latest

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

EXPOSE 10011 30033 9987/udp

RUN apt-get update -y && apt-get upgrade -y && \
		apt-get install wget vim -y && \
		apt-get install apt-utils -y && \
		wget  https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
		apt-get install bzip2 && \
		tar xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
		rm teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
		cd teamspeak3-server_linux_amd64 && \
		touch .ts3server_license_accepted

CMD sh teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh
