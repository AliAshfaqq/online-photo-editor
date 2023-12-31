FROM node:18-alpine  
RUN mkdir -p /usr/app/
WORKDIR /usr/app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]