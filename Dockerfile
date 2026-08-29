FROM alpine:3.23.5

WORKDIR /minecraft


RUN wget https://piston-data.mojang.com/v1/objects/823e2250d24b3ddac457a60c92a6a941943fcd6a/server.jar
COPY entrypoint.sh ./
RUN  apk update \
     && apk upgrade \
     && apk add ca-certificates \
     && update-ca-certificates \
     && apk add openjdk25-jre

CMD ["sh", "entrypoint.sh"]