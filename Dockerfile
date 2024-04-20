FROM node
LABEL maintainer kudgar@yandex.ru
RUN git clone -q https://github.com/kudgar/express-server.git
WORKDIR /app
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]