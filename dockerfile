FROM node:20.0.0

WORKDIR /app

COPY package*.json .

RUN npm install -g pnpm

RUN pnpm i

COPY . .

EXPOSE 3000

CMD ["pnpm", "dev"]


