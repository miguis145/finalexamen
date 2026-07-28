FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm test
COPY . .
RUN npm test
EXPOSE 8080
CMD ["node", "server.js"]
