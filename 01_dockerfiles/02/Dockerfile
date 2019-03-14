From debian:latest

ENV HOME . 
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils && apt-get upgrade -y && \
		apt-get install apt-utils -y && \
		apt-get install ruby-full -y && \
		apt-get install git -y && \	
		apt-get install rbenv ruby-build -y && \
		rbenv -v && \
		rbenv -h && \
		rbenv install -l && \
		rbenv install rbx-2.4.1 && \
		rbenv global rbx-2.4.1 && \
		ruby -v

CMD sh teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh
