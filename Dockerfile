FROM ghcr.io/tlbdk/typst:latest AS builder

# Copy in source files
RUN mkdir -p /app
WORKDIR /app
COPY . /app/

# Install MS Fonts from base image
RUN mkdir -p /app/fonts && cp /usr/share/fonts/truetype/msttcorefonts/*.ttf /app/fonts

# Install dependencies and build project
RUN make install-deps
RUN make

FROM scratch
COPY --from=builder /app/*.pdf /