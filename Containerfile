FROM docker.io/gitea/gitea:1.15.8

LABEL maintainer="jack.crosnierdebellaistre@kikotey.com"

COPY /scripts /scripts

RUN apk --no-cache add \
    python3 \
    py3-pip \
    && pip3 install s3cmd \
    && chmod u+x /scripts/gitea-backup.sh \
    && mkdir -p /etc/s3cmd 
