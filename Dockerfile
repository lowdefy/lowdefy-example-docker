FROM lowdefy/lowdefy:0.0.0-alpha.4

COPY --chown=node:node ./.lowdefy/build ./.lowdefy/build

CMD ["node", "./dist/server.js"]