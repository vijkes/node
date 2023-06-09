FROM amazonlinux:2

RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -

RUN yum install -y nodejs

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
