FROM alpine:3.11
# was FROM python3.8-alpine3.11

COPY requirements.txt /tmp/
RUN \
        apk add --update --no-cache python3 py3-gevent \
        && pip3 install -r /tmp/requirements.txt       \
        && adduser -s /bin/bash -D appuser

WORKDIR /home/appuser
USER appuser
COPY app app

CMD ["/bin/sh", "-c", "exec python3 app/wsgi-main.py"]
