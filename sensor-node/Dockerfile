FROM alpine:3.14
WORKDIR /app
COPY . .
EXPOSE 15000
RUN apk add curl
RUN chmod +x ./sensor-node.sh
CMD ["./sensor-node.sh"]
