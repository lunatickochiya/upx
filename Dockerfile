FROM alpine:latest

LABEL repository="https://github.com/actions-github/upx"
LABEL homepage="https://github.com/actions-github/upx"
LABEL maintainer="https://github.com/actions-github"

LABEL com.github.actions.name="UPX Action"
LABEL com.github.actions.description="GitHub Action to run UPX on an executable"
LABEL com.github.actions.icon="file-minus"
LABEL com.github.actions.color="blue"

RUN apk update && apk add --no-cache upx

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
