FROM node:16.18

RUN apt-get update && apt-get install -y curl

ENV PORT=3000

COPY . /frontend-react-js
WORKDIR /frontend-react-js
RUN npm install

EXPOSE ${PORT}

CMD ["npm", "start"]