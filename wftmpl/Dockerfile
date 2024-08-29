# docker buildx build --platform linux/amd64,linux/arm64 -t quay.io/codefresh/curl-base:8.9.1 .

FROM quay.io/curl/curl-base:8.9.1
RUN apk add --update coreutils jq \
    && rm -rf /var/cache/apk/*
