FROM jmoger/gitblit:latest

MAINTAINER Rushan Pun, <rushan.pun@accenture.com>

# Install Java 7 > we can't install Java from server....

#run DEBIAN_FRONTEND=noninteractive apt-get install -q -y software-properties-common
#run DEBIAN_FRONTEND=noninteractive apt-get install -q -y python-software-properties
#run DEBIAN_FRONTEND=noninteractive apt-add-repository ppa:webupd8team/java -y
#run apt-get update
#run echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
#run DEBIAN_FRONTEND=noninteractive apt-get install oracle-java7-installer -y

# Install Gitblit

#run apt-get install -q -y curl
#run curl -Lks http://dl.bintray.com/gitblit/releases/gitblit-1.7.0.tar.gz -o /root/gitblit.tar.gz
#run mkdir -p /opt/gitblit-tmp
#run tar zxf /root/gitblit.tar.gz -C /opt/gitblit-tmp
#run mv /opt/gitblit-tmp/gitblit-1.7.0 /opt/gitblit
#run rm -rf /opt/gitblit-tmp
#run rm -f /root/gitblit.tar.gz

# Move the data files to a separate directory
#run mkdir -p /opt/gitblit-data

#run mv /opt/gitblit/data/* /opt/gitblit-data

# Adjust the default Gitblit settings to bind to 80, 443, 9418, 29418, and allow RPC administration.
#
# Note: we are writing to a different file here because sed doesn't like to the same file it
# is streaming.  This is why the original properties file was renamed earlier.

#run echo "server.httpPort=80" >> /opt/gitblit-data/gitblit.properties
#run echo "server.httpsPort=443" >> /opt/gitblit-data/gitblit.properties
#run echo "server.redirectToHttpsPort=true" >> /opt/gitblit-data/gitblit.properties
#run echo "web.enableRpcManagement=true" >> /opt/gitblit-data/gitblit.properties
#run echo "web.enableRpcAdministration=true" >> /opt/gitblit-data/gitblit.properties


###################################### ADDING WRAPPER SECTION ############################################

#run [ -z "${SERVER_HTTP_PORT}" ] || git config -f "/opt/gitblit/data/gitblit.properites" server.httpPort "${SERVER_HTTP_PORT}"
#run [ -z "${SERVER_HTTPS_PORT}" ] || git config -f "/opt/gitblit/data/gitblit.properites" server.httpsPort "${SERVER_HTTPS_PORT}"
#run [ -z "${SERVER_REDIRECT_TO_HTTPS_PORT}" ] || git config -f "/opt/gitblit/data/gitblit.properites" server.redirectToHttpsPort "${SERVER_REDIRECT_TO_HTTPS_PORT}"
#run [ -z "${WEB_ENABLE_RPC_MANAGEMENT}" ] || git config -f "/opt/gitblit/data/gitblit.properites" web.enableRpcManagement "${WEB_ENABLE_RPC_MANAGEMENT}"
#run [ -z "${WEB_ENABLE_RPC_ADMINISTRATION}" ] || git config -f "/opt/gitblit/data/gitblit.properites" web.enableRpcAdministration "${WEB_ENABLE_RPC_ADMINISTRATION}"

#run echo "server.httpPort=9000" >> /opt/gitblit-data/gitblit.properties
#run echo "server.httpsPort=8443" >> /opt/gitblit-data/gitblit.properties
#run echo "server.redirectToHttpsPort=true" >> /opt/gitblit-data/gitblit.properties
#run echo "web.enableRpcManagement=false" >> /opt/gitblit-data/gitblit.properties
#run echo "web.enableRpcAdministration=false" >> /opt/gitblit-data/gitblit.properties
#run echo "server.storePassword=gitblit" >> /opt/gitblit-data/gitblit.properties
#run echo "git.repositoriesFolder=/opt/git" >> /opt/gitblit-data/gitblit.properties

#delete gitblit.properties file that was generated from the base image
#RUN rm -f /opt/gitblit-data/gitblit.properties

# Run entrypoint script

USER root
#RUN rm -f /opt/gitblit-data/gitblit.properties
COPY gitblit-entrypoint.sh /
RUN chmod +x /gitblit-entrypoint.sh

ENTRYPOINT ["/gitblit-entrypoint.sh"]

###########################################################################################################

# Setup the Docker container environment and run Gitblit
workdir /opt/gitblit
#expose 80
#expose 443
expose 9418
expose 29418

expose 9000
expose 8443
#expose 8444
cmd ["java", "-server", "-Xmx1024M", "-Djava.awt.headless=true", "-jar", "/opt/gitblit/gitblit.jar", "--baseFolder", "/opt/gitblit-data"]
#cmd ["java", "-server", "-Xmx1024M", "-Djava.awt.headless=true", "-jar", "/opt/gitblit/gitblit.jar", "--baseFolder", "/opt/gitblit/data"]

