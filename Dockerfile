FROM node:20-alpine3.20

WORKDIR /app

COPY index.js package.json ./

EXPOSE 3000

RUN apk update && apk add --no-cache bash openssl curl &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
