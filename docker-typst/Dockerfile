FROM alpine:3.21 AS builder

ARG TYPST_VERSION=0.13.1

RUN apk add --update \
    curl make patch msttcorefonts-installer \
    && rm -rf /var/cache/apk/*

# Install Microsoft fonts
RUN update-ms-fonts

# Install Typst
RUN curl -L "https://github.com/typst/typst/releases/download/v${TYPST_VERSION}/typst-x86_64-unknown-linux-musl.tar.xz" -o typst.tar.xz \
    && tar -xf typst.tar.xz -C /usr/local/bin --strip-components=1 typst-x86_64-unknown-linux-musl/typst \
    && rm typst.tar.xz