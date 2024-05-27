FROM golang:1.22.0

WORKDIR /app

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

COPY . .

RUN go mod download

RUN go build -o /my_app 

CMD ["/my_app"]