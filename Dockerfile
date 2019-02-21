FROM node:10-alpine

# Default path to report if one wasn't set from
# docker-compose or Docksal.
ENV REPORT_PATH /app/tests/pa11y/report.json

WORKDIR /app

# Add in bash so that Docksal can ssh into this container.
RUN apk add --no-cache bash

COPY package.json /app
RUN npm install
COPY . /app

CMD npm run dev

EXPOSE 8080
