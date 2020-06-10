FROM golang:alpine
RUN mkdir /app
WORKDIR /app
COPY main.go go.mod problems.csv /app/
RUN go build -o quiz .
ENTRYPOINT [ "./quiz" ]