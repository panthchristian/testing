FROM jupyter/base-notebook

WORKDIR /home/jovyan

USER jovyan

RUN sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install wget -y

RUN wget https://raw.githubusercontent.com/Bercik1337/rt-auto-install/master/Rt-Install-minimal

RUN sudo ./Rt-Install-minimal

EXPOSE 5000
