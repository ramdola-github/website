FROM node:lts

WORKDIR /app

RUN npm install -g npm@10.8.3

COPY package*.json .

RUN npm install 

COPY . .

EXPOSE 4321

CMD ["npm", "run", "dev"]



