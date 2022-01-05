TARGET=resume
DOCKER=docker run -l debug --workdir /data --rm -it --user="$$(id -u):$$(id -g)" --net=none -v $$PWD:/data:z docker.io/blang/latex:ubuntu

default: pdf

dvi: ${TARGET}.tex
	${DOCKER} latex ${TARGET}.tex

ps: dvi
	${DOCKER} dvips -R -Poutline -t letter ${TARGET}.dvi -o ${TARGET}.ps
	

pdf: ps
	${DOCKER} ps2pdf ${TARGET}.ps resume.pdf
	${DOCKER} ps2pdf ${TARGET}.ps "Elijah Caine McDade Voigt resume.pdf"
	${DOCKER} ps2pdf ${TARGET}.ps "Elijah Caine M. Voigt resume.pdf"

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

shell:
	${DOCKER} /bin/sh
