FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl gnupg
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update && apt-get install -y mongodb-org

EXPOSE 27017

CMD ["mongod"]
