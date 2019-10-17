FROM alpine:latest

LABEL repository="https://github.com/actions-github/upx" \
      homepage="https://github.com/actions-github/upx" \
      maintainer="https://github.com/actions-github" \
      com.github.actions.name="UPX Action" \
      com.github.actions.description="GitHub Action to run UPX on an executable" \
      com.github.actions.icon="file-minus" \
      com.github.actions.color="blue"

RUN apk update && apk add --no-cache upx

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
