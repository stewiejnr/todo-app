FROM node:12-alpine
RUN apk add --no-cache python python3 py3-pip g++ make
RUN pip3 install artify -U
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]