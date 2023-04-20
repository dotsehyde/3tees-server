FROM node:18-alpine

RUN mkdir -p /usr/app

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV=production

ENV PORT=3000

EXPOSE 7000 

CMD ["npm", "start"]