FROM busybox:latest

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
ADD ./anigma /anigma
RUN chown -R nobody:nobody /anigma