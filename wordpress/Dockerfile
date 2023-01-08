FROM wordpress:6.1-fpm-alpine

WORKDIR /var/www/html/

RUN apk update && \
    apk add zip curl --no-cache

RUN curl -o wpgraphql.zip -fL https://downloads.wordpress.org/plugin/wp-graphql.1.13.7.zip && \
    unzip -q wpgraphql.zip -d wp-content/plugins/ && \
    rm wpgraphql.zip

RUN curl -o fakerpress.zip -fL https://downloads.wordpress.org/plugin/fakerpress.0.5.3.zip && \
    unzip -q fakerpress.zip -d wp-content/plugins/ && \
    rm fakerpress.zip

COPY themes wp-content/themes