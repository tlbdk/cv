# Makefile for the CV project

# Variables
TMPDIR=$(shell mktemp -d)
TMPDIR:=${TMPDIR}
TYPST_ARGS=--font-path=./fonts --package-path=./packages
DEPENDENCIES=$(shell find src fonts modules_* -type packages -type f)

# Default target
all: cv.pdf letter.pdf

install: install-fonts install-packages

# Rule to install the font
install-fonts: fonts/SourceSans3-Regular.otf fonts/SourceSansPro-Regular.otf fonts/Font\ Awesome\ 6\ Free-Regular-400.otf fonts/Roboto-Regular.ttf

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

install-packages: packages/local/brilliant-cv/2.0.5

packages/local/brilliant-cv/2.0.5:
	mkdir -p packages/local/brilliant-cv/2.0.5
	(cd packages/local/brilliant-cv/2.0.5 && curl https://packages.typst.org/preview/brilliant-cv-2.0.5.tar.gz | tar -xz)

# Rule to build the PDF
%.pdf: %.typ $(DEPENDENCIES)
	typst compile $(TYPST_ARGS) $^

# Clean up auxiliary files
clean:
	rm -f *.pdf

.PHONY: all clean install install-packages install-fonts