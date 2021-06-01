FROM samtolmay/lowdefy

COPY --chown=node:node ./.lowdefy/build /home/node/lowdefy/build

CMD ["node", "/home/node/lowdefy/dist/server.js"]