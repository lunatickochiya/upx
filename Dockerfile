FROM alpine:latest

LABEL repository="https://github.com/tarampampam/upx-action"
LABEL homepage="https://github.com/tarampampam/upx-action"
LABEL maintainer="tarampampam"

LABEL com.github.actions.name="UPX Action"
LABEL com.github.actions.description="GitHub Action to run UPX on an executable"
LABEL com.github.actions.icon="file-minus"
LABEL com.github.actions.color="blue"

RUN apk update && apk add --no-cache upx

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
