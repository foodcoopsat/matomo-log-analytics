FROM python:3.11.0-alpine

RUN apk add --no-cache docker-cli

COPY import_logs.py /
COPY import-logs /etc/periodic/15min

CMD ["busybox", "crond", "-f", "-l", "0", "-L", "/dev/stdout"]
