FROM alpine:latest

LABEL repository="https://github.com/gacts/upx" \
      homepage="https://github.com/gacts/upx" \
      maintainer="https://github.com/gacts" \
      com.github.actions.name="UPX Action" \
      com.github.actions.description="GitHub Action to run UPX on an executable" \
      com.github.actions.icon="file-minus" \
      com.github.actions.color="blue"

RUN apk add --update --no-cache upx

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
