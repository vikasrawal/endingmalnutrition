# endingmalnutrition
# Ending Malnutrition: from commitment to action

This repository has the source files used for producing the book "Ending Malnutrition: from commitment to action". 
All files except official logo files and the cover files are included. These were not generated by me. You will not be able to compile the files to reproduce the book in absence of these files. But you may be able to remove reference to the missing files in the source files and still produce rest of the matter.

I have included the biblatex.cfg file from my local texmf directory, since some biblatex customisations are in that file.

The book uses memoir class, which was defined in my .emacs as 

    (add-to-list 'org-latex-classes
                 '("vmemoir"
                   "\\documentclass[11pt]{memoir}"
                   ("\\chapter{%s}" . "\\chapter*{%s}")
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))


I customise emacs using [Prelude](https://github.com/bbatsov/prelude). My own customisations are as in [https://github.com/vikasrawal/orgpaper/blob/master/research-toolkit.el](https://github.com/vikasrawal/orgpaper/blob/master/research-toolkit.el)

I export nutritionbook.org file to latex, and then compile it using compilebook.sh.

The master branch creates the print version, while the ebook branch creates the version used for the FAO repository.
