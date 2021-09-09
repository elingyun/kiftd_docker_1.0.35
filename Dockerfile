FROM anapsix/alpine-java
RUN apk add --update &&  apk add git && \
    git clone https://github.com/elingyun/kiftd-1.0.35.git /kiftd && mkdir /data && \
    echo "cd /kiftd && java -jar kiftd-1.0.35-RELEASE.jar -start" > /start.sh && \
    chmod +x /start.sh
    
EXPOSE 8080
VOLUME ["/kiftd/conf","/data"]
CMD ["/start.sh"]
