FIGS = $(wildcard src/fig/*.fig)
TIKZ_FIGS = $(patsubst src/fig/%.fig,src/tex/%.tex,$(FIGS))

all: $(TIKZ_FIGS)

src/tex/%.tex : src/fig/%.fig
	fig2dev -L tikz $< > $@