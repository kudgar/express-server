FROM node:18

# Папка приложения
ARG APP_DIR=app

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

# Установка зависимостей
COPY package*.json ./

RUN npm install --production

# Копируются только необходимые файлы
COPY app.js ./

CMD ["npm", "start"]