FROM kibana:8.12.2
COPY --chmod=+x script.sh /usr/share/kibana/script.sh
COPY --chmod=+x export.ndjson /usr/share/kibana/export.ndjson
COPY --chmod=+x kibana.yml /usr/share/kibana/config/kibana.yml
EXPOSE 5601

CMD ["/bin/bash", "-c", "/usr/share/kibana/script.sh"]
