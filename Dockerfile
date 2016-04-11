FROM ruby:alpine

MAINTAINER Simon Weis <docker@w3is.de>

COPY ./dashboard /dashboard

WORKDIR /dashboard

RUN apk update \
   && apk add build-base nodejs \
   && bundle \
   && apk del build-base

RUN addgroup dashing && adduser -S -G dashing dashing && chown -R dashing:dashing /dashboard
USER dashing

EXPOSE 8080
ENTRYPOINT ["dashing"]
CMD ["start", "-p", "8080"]
