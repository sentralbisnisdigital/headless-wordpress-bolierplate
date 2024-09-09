FROM wordpress:6.1-fpm-alpine@sha256:dd960524db88e35936c25b870fdd8473f997d89863ba82161c72175eb807a1c3

WORKDIR /var/www/html/

RUN apk update && \
    apk add zip curl --no-cache

RUN curl -o wpgraphql.zip -fL https://downloads.wordpress.org/plugin/wp-graphql.1.13.7.zip && \
    unzip -q wpgraphql.zip -d wp-content/plugins/ && \
    rm wpgraphql.zip

COPY themes wp-content/themes