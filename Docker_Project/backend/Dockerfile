# Stage 1: Build stage
FROM golang:1.18 AS builder

WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code
COPY . .

# Build the Go app
RUN go build -o main .

# Stage 2: Final stage
FROM debian:bullseye-slim

WORKDIR /app

# Copy the binary and secrets from the build stage
COPY --from=builder /app/main .


EXPOSE 8000

CMD ["./main"]
