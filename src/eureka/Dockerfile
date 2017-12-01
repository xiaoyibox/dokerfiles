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

# install gradle
RUN wget https://services.gradle.org/distributions/gradle-4.3.1-bin.zip
RUN unzip gradle-4.3.1-bin.zip 
RUN mv -f gradle-4.3.1/ /usr/local/
RUN rm gradle-4.3.1-bin.zip

#ENV 
ENV GRADLE_HOME=/usr/local/gradle-4.3.1
ENV PATH=$PATH:$GRADLE_HOME/bin

RUN echo $PATH

RUN gradle -v

RUN git clone https://github.com/Netflix/eureka.git
WORKDIR /home/work/apps/eureka/
#RUN ./gradlew clean build
WORKDIR /home/work/apps/eureka/eureka-server/build/libs/

