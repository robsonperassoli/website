FROM ghcr.io/gleam-lang/gleam:v1.0.0-erlang-alpine

# Add project code
COPY . /build/

# Compile the project
RUN cd /build \
    && gleam run -m tailwind/install \
    && gleam run -m tailwind/run \
    && gleam export erlang-shipment \
    && mv build/erlang-shipment /app \
    && mv priv /app/priv \
    && rm -r /build

# Run the server
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["run"]
