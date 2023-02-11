FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl gnupg
RUN curl https://www.apache.org/dist/cassandra/KEYS | apt-key add -
RUN echo "deb https://downloads.apache.org/cassandra/deb/ stable main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN apt-get update && apt-get install -y cassandra

EXPOSE 9042

CMD ["cassandra", "-f"]
