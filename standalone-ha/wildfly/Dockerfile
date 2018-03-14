FROM jboss/wildfly:8.2.0.Final


USER root

ADD Advertize.java /
RUN javac /Advertize.java
ADD launch.sh /
RUN chmod +x /launch.sh
RUN yum install -y iproute

USER jboss

RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent

COPY *.war /opt/jboss/wildfly/standalone/deployments/

# Run WildFly after the container boots
ENTRYPOINT /launch.sh
