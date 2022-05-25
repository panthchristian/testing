FROM node:16

WORKDIR /usr/src/app

USER root

RUN apt-get update -y && apt-get upgrade -y

RUN npm install --global flood

EXPOSE 3000
EXPOSE 4200

ENTRYPOINT ["npm", "--prefix=/usr/src/app/", "run", "start:development:server", "--", "--host=0.0.0.0"]
