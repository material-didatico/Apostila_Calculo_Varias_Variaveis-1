#------------------------------------------------------------------------------#

TEX_FILES := $(shell find -maxdepth 1 -name '*.tex' -type f -exec basename {} \;)
EXT_FILES := $(shell find -maxdepth 2 \
             -name '*.cls' -or \
             -name '*.sty' -or \
             -name '*.bib' -or \
             -name '*.asy')

PDF_FILES := $(TEX_FILES:.tex=.pdf)

LATEX := >/dev/null 2>&1 latexmk -pdf -silent

PRINT_LOG = texlogfilter --filename $(@:.pdf=.log)

ASY_DONE := ./asy/_all_done

DEPENDENCIES := $(EXT_FILES) $(wildcard ./figs/*) $(ASY_DONE)

ASY_EXISTS := $(wildcard asy/)

ifeq ($(ASY_EXISTS),)
  # Actions if the subdirectory does NOT exist
	MAKE_ASY := true
else
	MAKE_ASY := make --no-print-directory -C 
endif

#------------------------------------------------------------------------------#

all: $(PDF_FILES)

%.pdf: %.tex $(DEPENDENCIES)
	@ echo Compiling $@
	@ $(LATEX) || $(PRINT_LOG)

$(ASY_DONE):
	@ $(MAKE_ASY) asy

#------------------------------------------------------------------------------#

.PHONY: clean
clean:
	@ echo Cleaning $(notdir $(CURDIR))
	@ $(MAKE_ASY) asy clean
	@ rm -f *~ .*~ *.bak                                    \
          *.aux *.bbl *.blg *.lof *.log *.lot *.out *.toc \
          *.bcf *.run.xml *.snm *.nav *.vrb .*.sw?        \
          *.psynctex.gz *.synctex.gz *.rubbercache *.pre  \
          *.fdb_latexmk *.fls *.dvi

.PHONY: distclean
distclean: clean
	@ echo Distcleaning $(notdir $(CURDIR))
	@ $(MAKE_ASY) asy distclean
	@ rm -f *.pdf

#------------------------------------------------------------------------------#
