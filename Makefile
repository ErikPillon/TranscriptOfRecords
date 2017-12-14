title = transcript

# bibliography = bib.bib

#bibfiles = *.aux

all: $(title).pdf 

clean:
	rm -f *.toc *.aux *.out *.log *.dvi *.bbl *.gz *.blg *.xml *.bcf

archive:
	cd ..\
	zip -r  archive.zip Transcript/
	
$(title).pdf: $(title).tex 
	pdflatex $(title).tex
	pdflatex $(title).tex
	
