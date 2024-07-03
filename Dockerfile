FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@8.0.3

COPY . /app/

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
