
TARGET:=risk-assessment

COMPONENTS:=

.SUFFIXES: .tex .pdf

.tex.pdf:
	 pdflatex $< 
	 pdflatex $< 

$(TARGET).pdf : $(COMPONENTS)

all: $(TARGET).pdf

display: $(TARGET).pdf
	evince  $<
tidy:
	rm -rf *.aux *.log *.nav *.out  *.snm *~ *.toc

clean: tidy
	rm -rf *pdf
