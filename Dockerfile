FROM gethomepage/homepage

RUN mkdir -p /app/config

COPY ./config/* /app/config/

RUN chown -R node:node /app/config

WORKDIR /app

CMD ["node", "server.js"]