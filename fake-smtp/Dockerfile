FROM node:10.15.2-alpine

COPY . /www

WORKDIR /www

RUN npm i && npm run build

EXPOSE 25
EXPOSE 1080

CMD ["node", "index.js"]
