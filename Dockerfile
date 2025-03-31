FROM node:18.20.8

COPY ./ /commitlint

RUN cd /commitlint && npm install .

ENV PATH /commitlint/node_modules/.bin:$PATH

# https://github.com/conventional-changelog/commitlint/issues/613#issuecomment-1302587361
ENV NODE_PATH /commitlint/node_modules

ENTRYPOINT ["commitlint"]
