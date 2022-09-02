FROM node:18-alpine

WORKDIR /frontend

COPY package.json ./
COPY ./ ./

RUN mkdir -p /frontend/node_modules
RUN chown -R node /frontend/node_modules

RUN npm install --quiet

CMD ["npm", "start"]