# Curriculum vitae for Troels Liebe Bentsen

Writing CV's is pretty boring so why not make it a coding project.

This repo generates Troels Liebe Bentsen Curriculum vitae using [Typst](https://typst.app/) (moden day LaTeX) with local dependencies for templates and fonts so it can run in a CI environment.

## Install

MacOS:
``` bash
brew install typst
make install-deps # download packages and fonts
```

Linux:
``` bash
# Make sure you have installed the Microsoft TrueType core fonts as the template uses Times New Roman
apt install ttf-msttcorefonts-installer
update-ms-fonts
fc-update

# Or use your favorite package tool
curl -L "https://github.com/typst/typst/releases/download/v0.13.1/typst-x86_64-unknown-linux-musl.tar.xz" -o typst.tar.xz \
    && tar -xf typst.tar.xz -C /usr/local/bin --strip-components=1 typst-x86_64-unknown-linux-musl/typst \
    && rm typst.tar.xz
make install-deps # download packages and fonts
```

## Build

```
make
```

## VSCode setup

settings.json:
``` jsonc
{
    "tinymist.typstExtraArgs": [
        "--font-path=./fonts",
        "--package-path=./packages"
    ]
}
```