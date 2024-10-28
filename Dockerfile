FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /belajar-cicd-PIJAY

# Expose
RUN CGO_ENABLED=0 GOOS=linux go build -o /belajar-cicd-PIJAY
EXPOSE 8080
CMD ["/belajar-cicd-PIJAY"]
