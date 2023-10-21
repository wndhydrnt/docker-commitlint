FROM node:18.18.2

COPY ./ /commitlint

RUN cd /commitlint && npm install .

ENV PATH /commitlint/node_modules/.bin:$PATH

ENTRYPOINT ["commitlint"]
