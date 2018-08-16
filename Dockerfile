FROM jmoger/gitblit:latest

MAINTAINER Abul Kashim Gofur, <abul.k.gofur@accenture.com>

USER root
COPY gitblit-entrypoint.sh /
RUN chmod +x /gitblit-entrypoint.sh

# Run entrypoint script
ENTRYPOINT ["/gitblit-entrypoint.sh"]

# Setup the Docker container environment and run Gitblit
workdir /opt/gitblit

expose 9000
cmd ["java", "-server", "-Xmx5g", "-Djava.awt.headless=true", "-jar", "/opt/gitblit/gitblit.jar", "--baseFolder", "/opt/gitblit-data"]

