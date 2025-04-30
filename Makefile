# Makefile for the CV project

# Variables
TMPDIR=$(shell mktemp -d)
TMPDIR:=${TMPDIR}
TYPST_ARGS=--font-path=./fonts --package-path=./packages

# Default target
all: resume.pdf coverletter.pdf coverletter2.pdf

download: download-fonts download-packages

# Rule to download the font
download-fonts: fonts/SourceSans3-Regular.otf fonts/SourceSansPro-Regular.otf fonts/Font\ Awesome\ 6\ Free-Regular-400.otf fonts/Roboto-Regular.ttf

fonts/SourceSans3-Regular.otf:
	mkdir -p fonts
	curl -L https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip -o $(TMPDIR)/fonts.zip
	unzip $(TMPDIR)/fonts.zip -d $(TMPDIR)/fonts
	find $(TMPDIR)/fonts -type f -name "*.otf" -exec cp {} fonts \;

fonts/SourceSansPro-Regular.otf:
	mkdir -p fonts
	curl -L https://www.fontsquirrel.com/fonts/download/source-sans-pro -o $(TMPDIR)/fonts.zip
	unzip $(TMPDIR)/fonts.zip -d $(TMPDIR)/fonts
	find $(TMPDIR)/fonts -type f -name "*.otf" -exec cp {} fonts \;

fonts/Font\ Awesome\ 6\ Free-Regular-400.otf:
	mkdir -p fonts
	curl -L https://use.fontawesome.com/releases/v6.6.0/fontawesome-free-6.6.0-desktop.zip -o $(TMPDIR)/fonts.zip
	unzip $(TMPDIR)/fonts.zip -d $(TMPDIR)/fonts
	find $(TMPDIR)/fonts -type f -name "*.otf" -exec cp {} fonts \;

fonts/Roboto-Regular.ttf:
	mkdir -p fonts
	curl -L https://font.download/dl/font/roboto.zip -o $(TMPDIR)/fonts.zip
	unzip $(TMPDIR)/fonts.zip -d $(TMPDIR)/fonts
	find $(TMPDIR)/fonts -type f -name "*.ttf" -exec cp {} fonts \;

download-packages: packages/local/modern-cv/0.8.0

packages/local/modern-cv/0.8.0:
	mkdir -p packages/local/modern-cv/0.8.0
	(cd packages/local/modern-cv/0.8.0 && curl https://packages.typst.org/preview/modern-cv-0.8.0.tar.gz | tar -xz)
	patch < patches/modern-cv-0.8.0.patch

# Rule to build the PDF
%.pdf: %.typ metadata.toml $(shell find packages -type f)
	typst compile $(TYPST_ARGS) $<

# Clean up auxiliary files
clean:
	rm -f *.pdf

.PHONY: all clean download download-packages install-fonts 