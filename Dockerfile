#runtime definition
FROM node:10.16.0 

MAINTAINER Sachit Karki

ENV APP_ROOT app/

# default working directory, similar to home directory
WORKDIR $APP_ROOT    

COPY package.json package-lock.json $APP_ROOT

RUN npm install

COPY . $APP_ROOT

EXPOSE 3000

RUN ls -la app

CMD ["node", "app/app.js"]