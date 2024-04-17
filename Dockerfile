FROM node

WORKDIR /app

COPY . .

CMD ["python", "index.py"]