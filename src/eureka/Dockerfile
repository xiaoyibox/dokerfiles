#
# Eureka
#


FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
RUN mkdir -p /home/work/apps/
WORKDIR /home/work/apps/

RUN yum install git -y

RUN git --version

RUN which git

# install gradle
RUN wget https://services.gradle.org/distributions/gradle-4.3.1-bin.zip
RUN mkdir gradle
RUN unzip gradle-4.3.1-bin.zip ./gradle
RUN cp -f ./gradle /usr/local/

#ENV 
ENV GRADLE_HOME=/usr/local/gradle
ENV PATH=$PATH:$GRADLE_HOME/bin

RUN echo $PATH

RUN gradle -v

RUN git clone https://github.com/Netflix/eureka.git
WORKDIR /home/work/apps/eureka/
RUN ./gradlew clean build
WORKDIR /home/work/apps/eureka/eureka-server/build/libs/

