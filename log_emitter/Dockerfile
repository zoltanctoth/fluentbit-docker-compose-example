FROM alpine:latest

RUN apk add --no-cache bash 

COPY emit_logs.sh /
RUN chmod +x /emit_logs.sh

CMD ["/emit_logs.sh"]
