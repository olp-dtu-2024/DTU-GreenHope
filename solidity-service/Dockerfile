FROM node:20 AS builder

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --network-timeout 1000000

COPY . .

RUN yarn build

FROM node:20-slim

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 3029

CMD ["yarn", "start:prod"]
