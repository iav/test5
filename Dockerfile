#FROM rust:1.44.1 as rust
FROM shtripok/rust-musl-builder:arm

WORKDIR /app
COPY * ./
COPY src/ ./src/
RUN env|sort
RUN cargo build
