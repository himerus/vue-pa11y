FROM node:10-alpine

# Default path to report if one wasn't set from
# docker-compose or docksal.
ENV REPORT_PATH /app/tests/pa11y/report.json

WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app

CMD npm run dev

EXPOSE 8080
