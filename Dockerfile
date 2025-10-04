FROM golang:1.25 AS build

WORKDIR /app
COPY . .
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o go-weather .

FROM gcr.io/distroless/static-debian12
COPY --from=build /app/go-weather go-weather
CMD ["./go-weather"]
