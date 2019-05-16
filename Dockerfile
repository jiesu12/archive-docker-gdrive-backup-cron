ARG arch
FROM jiesu/cron:${arch}

RUN apk --no-cache add p7zip git curl

VOLUME /repos

COPY job.sh /
RUN chmod +x /job.sh

