FILE	= lec7

all:
	vi $(FILE).Rmd
	make knit

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q

view:
	google-chrome $(FILE).html

www:
	scp lec*html ex_*html epebe_01@ifgifiles.uni-muenster.de:WWW/astd
