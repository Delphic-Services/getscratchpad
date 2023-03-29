FROM node:latest

WORKDIR /getscratchpadnote


COPY package*.json ./
RUN npm install && \
npm rebuild bcrypt -build-form-source \
COPY . .

EXPOSE 8000

CMD ["npm", "start" , "node" , "index.js"]

