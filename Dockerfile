FROM golang:1.25-alpine AS build
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN go build -trimpath -ldflags="-s -w" -o /out/vgmss ./cmd/vgmss

FROM scratch
COPY --from=build /out/vgmss /vgmss
EXPOSE 8080
ENV VGMSS_DB=/data/vgmss.db
USER 65532:65532
ENTRYPOINT ["/vgmss", "-addr", "0.0.0.0:8080"]
