
FROM golang:1.18-alpine

RUN mkdir /app/
COPY main.go /app/

EXPOSE 8080

ENTRYPOINT ["go", "run"]

CMD ["/app/main.go"]