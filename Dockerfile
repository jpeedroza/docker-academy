FROM tomcat:latest
WORKDIR /usr/local/tomcat/

COPY target/*.war /usr/local/tomcat/webapps

EXPOSE 8080/tcp

RUN apt install -y curl

# Copia das Chaves de SSL, descomentar juntamente com os códigos abaixo para ativar SSL
#COPY ca.pem ca.pem
#RUN openssl x509 -in ca.pem -inform pem -out ca.der -outform der && \
#  echo yes | keytool -importcert -alias startssl -keystore \
#  /docker-Java-home/jre/lib/security/cacerts -storepass changeit -file ca.der 

HEALTHCHECK --interval=45s \
  --timeout=30s  \
  --start-period=30s \
  --retries=5 \
  CMD curl -f localhost:8080 || exit 1
CMD /usr/local/tomcat/bin/catalina.sh run
