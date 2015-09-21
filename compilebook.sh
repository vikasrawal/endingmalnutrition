#!/bin/sh
#find -iname nutritionbook\* | grep -v org | grep -v tex | xargs rm
sed -i "s/subsection\*\[3.1 Sustainable food systems promoting healthy/subsection[3.1 Sustainable food systems promoting healthy/g" nutritionbook.tex
sed -i "s/subsection\*\[3.3 Nutrition education/subsection[3.3 Nutrition education/g" nutritionbook.tex
xelatex -interaction nonstopmode nutritionbook
biber nutritionbook
xelatex -interaction nonstopmode nutritionbook
#xindy -M texindy -M page-ranges -L turkish -C utf8 nutritionbook.idx
texindy -M texindy -M page-ranges -L english -C utf8 nutritionbook.idx
#xindy -M texindy -M page-ranges -L english -C utf8 subject.idx
xelatex -interaction nonstopmode nutritionbook
xelatex -interaction nonstopmode nutritionbook
