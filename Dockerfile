FROM ghcr.io/tlbdk/typst:latest AS builder

# Copy in source files
RUN mkdir -p /app
WORKDIR /app
COPY . /app/

# Install dependencies and build project
RUN make install-deps
RUN make

FROM scratch
COPY --from=builder /app/*.pdf /