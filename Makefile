# Makefile for the CV project

# Variables
TMPDIR=$(shell mktemp -d)
TMPDIR:=${TMPDIR}
TYPST_ARGS=--font-path ./fonts --package-path ./packages

# Default target
all: resume.pdf resume-extended.pdf coverletter.pdf coverletter2.pdf

install-deps: fonts packages

# Rule to download the font
define download-fonts-zip
	@mkdir -p fonts
	@curl -L $(1) -o "$(TMPDIR)/fonts.zip"
	@unzip "$(TMPDIR)/fonts.zip" -d "$(TMPDIR)/fonts"
	# Remove spaces on copy to new folder as Make is not very happy with spaces
	@find "$(TMPDIR)/fonts" -type f -name $(2) -exec sh -c 'old="{}";new=$$(basename "{}" | sed "s/ /-/g");cp "$$old" "fonts/$$new";' ';'
endef

fonts: fonts/SourceSans3-Regular.otf fonts/SourceSansPro-Regular.otf fonts/Font-Awesome-6-Free-Regular-400.otf fonts/Roboto-Regular.ttf

fonts/SourceSans3-Regular.otf:
	@$(call download-fonts-zip,	"https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip", "*.otf")

fonts/SourceSansPro-Regular.otf:
	@$(call download-fonts-zip,	"https://www.fontsquirrel.com/fonts/download/source-sans-pro", "*.otf")

fonts/Font-Awesome-6-Free-Regular-400.otf:
	@$(call download-fonts-zip,	"https://use.fontawesome.com/releases/v6.6.0/fontawesome-free-6.6.0-desktop.zip", "*.otf")

fonts/Roboto-Regular.ttf:
	@$(call download-fonts-zip,	"https://font.download/dl/font/roboto.zip", "*.ttf")

packages: packages/local/modern-cv/0.8.0

packages/local/modern-cv/0.8.0:
	mkdir -p packages/local/modern-cv/0.8.0
	(cd packages/local/modern-cv/0.8.0 && curl https://packages.typst.org/preview/modern-cv-0.8.0.tar.gz | tar -xz)
	patch -p1 < patches/modern-cv-0.8.0.patch

# Rule to build the PDF
%.pdf: %.typ metadata.toml $(shell find packages fonts -type f 2>/dev/null)
	typst compile $(TYPST_ARGS) --input "output=$@" $< $@

%-extended.pdf: %.typ metadata.toml $(shell find packages fonts -type f 2>/dev/null)
	typst compile $(TYPST_ARGS) --input "output=$@" $< $@

# Clean up auxiliary files
clean:
	rm -f *.pdf
distclean: clean
	rm -rf packages
	rm -rf fonts

.PHONY: all clean distclean packages fonts install-deps 