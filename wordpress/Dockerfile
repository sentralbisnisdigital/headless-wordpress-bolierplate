FROM wordpress:6.7-fpm-alpine@sha256:45608a03aaa87112ec9b56a180357335a6c619e97ed213a8de30dbe0d30c40d8

WORKDIR /var/www/html/

RUN apk update && \
    apk add zip curl --no-cache

RUN curl -o wpgraphql.zip -fL https://downloads.wordpress.org/plugin/wp-graphql.1.13.7.zip && \
    unzip -q wpgraphql.zip -d wp-content/plugins/ && \
    rm wpgraphql.zip

COPY themes wp-content/themes