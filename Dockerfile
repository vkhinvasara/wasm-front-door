FROM rust:latest

WORKDIR /app

COPY . .

RUN cargo install trunk
RUN rustup target add wasm32-unknown-unknown
RUN cargo build

ENV PORT = 8080

EXPOSE 8080

CMD [ "trunk", "serve" ]