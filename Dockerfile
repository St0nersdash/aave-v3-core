FROM ethereum/solc:0.6.12 as build-deps

FROM node:hydrogen-bullseye-slim

USER node

COPY --from=build-deps /usr/bin/solc /usr/bin/solc
