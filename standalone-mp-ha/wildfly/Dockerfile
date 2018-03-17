FROM jboss/wildfly:8.2.0.Final

ENV mltcast_address=224.0.1.105

USER root

ADD Advertize.java /
RUN javac /Advertize.java
ADD launch.sh /
RUN chmod +x /launch.sh
RUN yum install -y iproute

USER jboss

RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent

COPY *.war /opt/jboss/wildfly/standalone/deployments/

RUN sed -i 's|<socket-binding name="modcluster" port="0" multicast-address="224.0.1.105" multicast-port="23364"/>|<socket-binding name="modcluster" port="0" multicast-address="${jboss.mltcast.address}" multicast-port="23364"/>|' /opt/jboss/wildfly/standalone/configuration/standalone-ha.xml


RUN cat /opt/jboss/wildfly/standalone/configuration/standalone-ha.xml

# Run WildFly after the container boots
ENTRYPOINT /launch.sh $mltcast_address
