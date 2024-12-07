FROM node:20 AS builder

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --network-timeout 1000000

COPY . .
RUN yarn build

RUN yarn add playwright
RUN npx playwright install --with-deps chromium
RUN npx playwright install-deps
RUN npm install request --save

FROM node:20-slim

WORKDIR /app

COPY --from=builder /app /app
COPY --from=builder /root/.cache/ms-playwright /root/.cache/ms-playwright

RUN apt-get update && apt-get install -y \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libxkbcommon0 \
  libxcomposite1 \
  libxrandr2 \
  libgbm1 \
  libpangocairo-1.0-0 \
  libpangoft2-1.0-0 \
  libharfbuzz0b \
  libnss3 \
  libgtk-3-0 \
  libdrm2 \
  libdbus-glib-1-2 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN chmod -R 777 /root/.cache/ms-playwright

EXPOSE 3027

CMD ["yarn", "start:prod"]
