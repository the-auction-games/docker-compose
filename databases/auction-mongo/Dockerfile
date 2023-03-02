FROM mongo
RUN apt-get update && apt-get install -y netcat
WORKDIR /db/
COPY ./dump ./dump
COPY ./restore.sh ./restore.sh
CMD ["./restore.sh"]