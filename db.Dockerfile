FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=petclinic
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
ENV MYSQL_USER=petclinic
ENV MYSQL_PASSWORD=petclinic
ENV MYSQL_DATABASE=petclinic

HEALTHCHECK --interval=60s \
  --timeout=20s  \
  --start-period=30s \
  --retries=5 \
  CMD ["mysqladmin" ,"ping", "-h", "localhost"]
EXPOSE 3306
