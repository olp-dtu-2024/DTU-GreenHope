FROM node:20.11.1 as base

RUN apt-get update -q && \
  apt-get install -q -y libasound2 libatk-bridge2.0-0 libgtk-4-1 libnss3 xdg-utils

# =============================================================================

FROM base AS deps
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --network-timeout 1000000
RUN npx playwright install --with-deps chromium

# =============================================================================

FROM base AS build
WORKDIR /app
COPY --from=deps /app/node_modules /app/node_modules
COPY . .
RUN yarn build

# =============================================================================

FROM base
ENV NODE_ENV=production
WORKDIR /app
COPY --from=deps /app/node_modules /app/node_modules
COPY --from=deps /root/.cache /root/.cache
COPY --from=build /app /app
COPY --from=build /usr/lib /usr/lib
EXPOSE 3027

CMD ["yarn", "start:prod"]
