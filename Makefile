TARGET=resume
HTML=main_html

default: pdf

dvi: ${TARGET}.tex 
	latex ${TARGET}.tex

ps: dvi
	dvips -R -Poutline -t letter ${TARGET}.dvi -o ${TARGET}.ps

pdf: ps
	ps2pdf ${TARGET}.ps resume.pdf
	ps2pdf ${TARGET}.ps "Elijah Caine McDade Voigt resume.pdf"
	ps2pdf ${TARGET}.ps "Elijah Caine M. Voigt resume.pdf"

clean:
	rm *.aux
	rm *.log
	rm *.dvi
	rm *.ps

veryclean:
	rm *.aux
	rm *.log
	rm *.dvi
	rm *.ps
	rm *.pdf
