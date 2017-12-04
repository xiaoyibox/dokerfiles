#
# KONGA 0.11.X
#
FROM yi/centos7-nodejs
MAINTAINER Yi.Ma <findlymw@gmail.com>


RUN mkdir -p /home/work/apps/
WORKDIR /home/work/apps/

RUN npm install -g gulp
RUN npm install -g bower
RUN npm install -g sails

RUN git clone https://github.com/pantsel/konga.git

WORKDIR /home/work/apps/konga/

RUN npm install konga
