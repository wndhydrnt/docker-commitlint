FROM node:18.18.1

COPY ./ /commitlint

RUN cd /commitlint && npm install .

ENV PATH /commitlint/node_modules/.bin:$PATH

ENTRYPOINT ["commitlint"]
