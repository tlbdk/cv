# Curriculum vitae for Troels Liebe Bentsen

Writing CV's is pretty boring so why not make it a coding project.

This repo generates Troels Liebe Bentsen Curriculum vitae using [Typst](https://typst.app/) (moden day LaTeX) with local dependencies for templates and fonts so it can run in a CI environment.

## Install

```
brew install typst
make download # download packages and fonts
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