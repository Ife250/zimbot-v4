FROM fusuf/whatsasena:latest

RUN git clone https://github.com/ife250/zimbot-v4  /kingsley/Zimbotv4

WORKDIR /kingsley/Zimbotv4

ENV TZ=Africa/Malawi

RUN npm install

RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
