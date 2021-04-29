FROM node:14.15-alpine

RUN npm install -g @nestjs/cli -ignore-engines

RUN mkdir -p /app/nest

COPY ./yarn.lock /app/nest
COPY ./package.json /app/nest

RUN yarn --cwd /app/nest install --ignore-engines
