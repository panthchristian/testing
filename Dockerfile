FROM node:16

WORKDIR /usr/src/app

USER root

RUN apt-get update -y && apt-get upgrade -y

RUN git clone https://github.com/jesec/flood.git && npm install && npm run build

EXPOSE 3000

CMD ["npm","start"]
