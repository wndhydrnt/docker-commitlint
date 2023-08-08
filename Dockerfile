FROM node:18.17.0

COPY ./ /commitlint

RUN cd /commitlint && npm install .

ENV PATH /commitlint/node_modules/.bin:$PATH

ENTRYPOINT ["commitlint"]
