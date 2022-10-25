FROM node:18 as builder

WORKDIR /app
COPY . .
RUN npm ci

EXPOSE 3000

CMD ["npm","run","dev","--","--host"]