From debian:latest
RUN apt-get update -y && apt-get upgrade -y && \
		apt-get install wget -y && \
		apt-get install apt-utils -y && \
		wget http://dl.4players.de/ts/releases/3.0.12.4/teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2 && \
		apt-get install bzip2 -y && \
		tar xvf teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2

