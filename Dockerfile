FROM ubuntu:latest

WORKDIR /app

RUN apt-get -y update  && apt-get upgrade -y

RUN wget https://raw.githubusercontent.com/Bercik1337/rt-auto-install/master/Rt-Install-minimal

EXPOSE 5000

CMD ["sudo","./Rt-Install-minimal"]