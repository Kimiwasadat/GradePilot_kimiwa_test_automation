FROM node:20-alpine

WORKDIR /app

COPY frontend/package*.json ./
RUN npm install

COPY frontend/ .

RUN npm run build

EXPOSE 8080

ENV PORT=8080
ENV HOSTNAME=0.0.0.0

CMD ["npm", "start"]
