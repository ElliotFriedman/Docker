From ruby

ENV DEBIAN_FRONTEND noninteractive
 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils build-essential sqlite3 nodejs gem rails && apt-get upgrade -y && \
		apt-get install apt-utils -y && \
		apt-get install ruby-full -y && \
		apt install gnupg2 && \
		gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

WORKDIR /tmp
RUN curl -sSL https://get.rvm.io -o rvm.sh && \
		cat /tmp/rvm.sh | bash -s stable --rails && \
		apt-get install rbenv ruby-build -y && \
		rbenv -v && \
		rbenv -h && \
		rbenv install -l
		
COPY app /opt/app
WORKDIR /opt/app/hello_world

EXPOSE 3000
RUN gem install bundler && bundle install
RUN rake db:migrate
RUN rake db:seed
 
