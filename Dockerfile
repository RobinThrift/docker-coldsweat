# vim:set ft=dockerfile:
FROM python:2.7

# RUN apk add --update \
#     git \
#     && rm -rf /var/cache/apk/*
 RUN apt-get update && apt-get install --yes \
     git

RUN easy_install pip

RUN git clone https://github.com/passiomatic/coldsweat.git /coldsweat
WORKDIR /coldsweat
RUN git checkout v0.9.5

RUN pip install -r requirements.txt

ADD start.sh /coldsweat

ENV EMAIL test@example.com
ENV PASSWORD password
ENV USERNAME coldsweat

RUN mkdir /data
VOLUME /data
EXPOSE 8080
# CMD ["python", "sweat.py", "serve", "-r"]
CMD ["./start.sh"]
