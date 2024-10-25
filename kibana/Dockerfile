FROM kibana:8.12.2
COPY --chmod=755 script.sh /usr/share/kibana/script.sh
COPY --chmod=755 export.ndjson /usr/share/kibana/export.ndjson
COPY --chmod=755 kibana.yml /usr/share/kibana/config/kibana.yml
EXPOSE 5601

CMD ["/bin/bash", "-c", "/usr/share/kibana/script.sh"]
