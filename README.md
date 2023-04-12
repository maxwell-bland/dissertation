# UIUC Thesis Template 2020

This is a version of [uiucthesis2014](https://github.com/mayhewsw/uiucthesis2014)
with some updates to the new decade compatible with **TeXLive 2018 and newer**.
The main [official requirements](https://grad.illinois.edu/thesis/format) should
still be respected (feel free to file a bug otherwise).

At a technical level, a few things have changed in the class implementation:

* it was updated to more recent versions of LaTeX with less care about
  backwards compatibility.
* it is now based on `srcbook` from *KOMA-Script* instead of the default
  `book` document class.
* the actual code class is hopefully easier to read, since a lot of weird
  custom spacing code was removed and replaced with `scrlayer-scrpage`
  and `tocbasic` utilities.

An example document is provided in `thesis.tex` and can be easily built with
```bash
make example
```
The provided documentation can also be built with
```bash
make docs
```

# Usage

To use this class, the easiest way is probably just to copy `uiucthesis2020.cls`
to your own repository / local folder and use is as a document class
```latex
\documentclass[11pt,edeposit,draftthesis]{uiucthesis2020}
% ... custom commands and packages ...

\begin{document}
% ... custom text ...
\end{document}
```

The `thesis.tex` and `thesisstyle.tex` files are provided as inspiration and
likely contain some personal preferences.

# Options

The class has several options that can be turned on as desired (see the
documentation in ``uiucthesis2020.pdf`` for details). They are

* ``draftthesis``: turns on line numbering, puts the compilation date on
  each page, etc. This is mostly meant to make it easier to review the manuscript.
* ``edeposit``: should be turned on when depositing the thesis electronically.
  This contains some important official requirements.
* ``doublespacing``: turns on double line spacing. By default the lines are
  spaced at 1.5, which is also allowed by the official requirements.
* ``forcebottom``: sets the bottom margin to be exactly ``1in`` as well. By
  default, the class uses standard KOMA-Script margins (with ``DIV=12``),
  which set the bottom margin to about twice the other margins (which are
  already ``1in``).
* ``layoutgrid``: adds a nice grid on each page to allow checking the
  margins.

# References

Some recommended reading

* [microtype: Better Typography](http://www.khirevich.com/latex/microtype/)
* [booktabs: Pretty Tables](https://inf.ethz.ch/personal/markusp/teaching/guides/guide-tables.pdf)
* [xparse: Powerful Commands](https://www.texdev.net/2010/05/23/from-newcommand-to-newdocumentcommand/)
* [fixmath: ISO Math](https://ctan.org/pkg/fixmath)
* [cleveref: Flexible References](https://texblog.org/2013/05/06/cleveref-a-clever-way-to-reference-in-latex/)
