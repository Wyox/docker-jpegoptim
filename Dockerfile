FROM alpine:3.9
RUN apk add jpegoptim \
    && mkdir -p /input \
    && mkdir -p /opt

WORKDIR /input
COPY entrypoint.sh /opt
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["--help"]

