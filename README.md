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

https://typst.app/universe/package/grotesk-cv

https://typst.app/universe/package/vantage-cv

https://typst.app/universe/package/metronic