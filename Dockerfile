FROM teracy/ubuntu:16.04-dind-17.06.0-ce
RUN mkdir log && touch log/test.txt && chmod -R 777 log/test.txt
COPY updateTime.sh /log/
RUN chmod 777 log/updateTime.sh
ENTRYPOINT log/updateTime.sh