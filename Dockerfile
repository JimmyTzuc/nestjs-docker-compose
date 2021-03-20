FROM node:14.15-alpine

RUN npm install -g @nestjs/cli -ignore-engines

RUN mkdir -p /app/nest

COPY ./nest/yarn.lock /app/nest
COPY ./nest/package.json /app/nest

RUN yarn --cwd /app/nest install --ignore-engines
