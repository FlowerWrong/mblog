## Code Beautify


#### [uncrustify](https://github.com/bengardner/uncrustify)

###### Install

```bash
sudo apt-get install uncrustify
```

###### Introduction

Banish crusty code with the Uncrustify C/C++/C#/D/Java/Pawn source code beautifier. It indents, adds newlines, aligns, etc, and is highly configurable.

###### Config file

```bash
mkdir -p ~/.uncrustify/
cd ~/.uncrustify/
wget https://github.com/bengardner/uncrustify/blob/master/etc/ben.cfg
```

###### Usage

```bash
uncrustify -c ~/.uncrustify/ben.cfg -f somefile.c > somefile.c.unc
```

###### With [atom support](https://github.com/Glavin001/atom-beautify#language-support)
