#FROM rust:1.44.1 as rust
FROM shtripok/rust-musl-builder:arm

WORKDIR /app
COPY * ./
COPY src/ ./src/
RUN sudo chown rust:rust /app
RUN env|sort
RUN cargo build
