ARG arch
FROM jiesu/cron:${arch}

RUN apk --no-cache add p7zip git

VOLUME /repos

COPY gdrive_linux_pi /
RUN chmod +x /gdrive_linux_pi

COPY job.sh /
RUN chmod +x /job.sh

ENV GDRIVE_CMD /gdrive_linux_pi

