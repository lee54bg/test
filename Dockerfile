FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
ENTRYPOINT ["sleep", "1m"]
