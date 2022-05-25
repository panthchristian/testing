FROM ubuntu:latest

USER root

WORKDIR /app

RUN apt-get -y update  && apt-get upgrade -y && apt-get install wget -y

RUN wget https://raw.githubusercontent.com/Bercik1337/rt-auto-install/master/Rt-Install-minimal

EXPOSE 5000

CMD ["./Rt-Install-minimal"]