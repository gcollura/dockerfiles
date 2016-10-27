FROM alpine:latest

RUN apk add --update zsh curl && \
    rm -rf /var/cache/apk/*

COPY zshrc /root/.zshrc

ENTRYPOINT ["/bin/zsh"]
