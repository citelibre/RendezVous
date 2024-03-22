FROM elasticsearch:8.12.2

COPY --chmod=+x init-user.sh /usr/local/bin/init-user.sh
EXPOSE 9200

CMD ["/bin/bash", "-c", "/usr/local/bin/init-user.sh && /usr/local/bin/docker-entrypoint.sh"]
