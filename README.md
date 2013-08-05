Warrior-GDD
===========

The Project Warrior Game Design Document.

USE
===========
The gdd is written in txt2tag syntax. It can be easily readed directly with any text reader.
If you want to read it in html or tex, you need txt2tag installed in your computer. If you want to read it in pdf, you also need to have pdflatex installed.
To generate html or pdf, you simply have to use :
      make [html|pdf]

LANGUAGES
===========
The main language is the french : only the french gdd is guaranted to always be up-to-date, so it's the default one. The others (if any) are translations.
If you want to generate the pdf or html in any other language, just add 'LANG=en' (replace en by the lang you want) just after the make command.
You can know want languages are allowed by using the 'make langs' command.

