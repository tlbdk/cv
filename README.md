# CV

## Install

```
brew install typst
make download # download packages and fonts
```

## Build

```
make
```

## vscode

settings.json:
``` jsonc
{
    "tinymist.typstExtraArgs": [
        "--font-path=./fonts",
        "--package-path=./packages"
    ]
}
```