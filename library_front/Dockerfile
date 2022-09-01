FROM node:18-alpine

WORKDIR /app

COPY package.json ./
COPY ./ ./

RUN mkdir -p /app/node_modules
RUN chown -R node /app/node_modules

RUN npm install --quiet

CMD ["npm", "start"]