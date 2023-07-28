FROM node:18-alpine

# WORKDIR /usr/src/app
WORKDIR /var/www/persib-stg
COPY package*.json ./

RUN npm ci --force
# RUN npm install --force
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]