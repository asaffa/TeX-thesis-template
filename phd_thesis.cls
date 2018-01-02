% compile with: xelatex -shell-escape
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phd_thesis}
\LoadClass[12pt,a4paper,oneside]{book}

%\RequirePackage{subfiles}

% page setup
\RequirePackage{setspace}
\onehalfspacing
\usepackage[parfill]{parskip}
\usepackage{pdflscape}
\usepackage{afterpage}
\usepackage[toc,page]{appendix}
\errorcontextlines=\maxdimen
\usepackage{etoolbox}
\patchcmd{\nocite}{\ifx\@onlypreamble\document}{\iftrue}{}{}

%font set up
\RequirePackage[T1]{fontenc}
\DeclareTextCommand{\nobreakspace}{T1}{\leavevmode\nobreak\ }
\RequirePackage{amsmath}
\RequirePackage[MnSymbol]{mathspec}
\makeatletter % undo the wrong changes made by mathspec
\let\RequirePackage\original@RequirePackage
\let\usepackage\RequirePackage
\makeatother
\renewcommand\_{\textunderscore\allowbreak}
\RequirePackage{blindtext}
\RequirePackage{titling}
\RequirePackage[raggedright,bf,sf]{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\setmainfont[Ligatures=TeX,Numbers=Lining]{Minion Pro}
\setsansfont[Ligatures=TeX]{Myriad Pro}
\defaultfontfeatures{Ligatures=TeX}
\newfontfamily\headingfont[]{Myriad Pro}
\newfontfamily\subheadingfont[]{Minion Pro}
\renewcommand{\maketitlehooka}{\headingfont}
\newcommand{\hsp}{\hspace{20pt}}
\RequirePackage[table,xcdraw]{xcolor}
\definecolor{background}{rgb}{0.95,0.95,0.95}
\definecolor{accent}{rgb}{0.5,0.95,0.80}
\titleformat{\chapter}[hang]{\huge\headingfont}{\thechapter\hsp\textcolor{accent}{|}\hsp}{0pt}{\huge\mdseries}
\titleformat*{\section}{\Large\headingfont\mdseries}
\titleformat*{\subsection}{\large\subheadingfont\itshape}
\titleformat*{\subsubsection}{\normalsize\subheadingfont\itshape}
\titleformat*{\paragraph}{\normalsize\subheadingfont}
\fancyhf{}
\fancyhead[R]{\ifthenelse{\isodd{\value{page}}}{\nouppercase\rightmark}{}}
\fancyhead[L]{\ifthenelse{\isodd{\value{page}}}{}{\nouppercase\leftmark}}
\fancyfoot[C]{\thepage}
\pagestyle{fancy}

%figure and table set up
\RequirePackage{pdfpages}
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{caption}
\newfontfamily\figcapfont{Helvetica}
\DeclareCaptionFormat{figcapfont}{\figcapfont \footnotesize \textbf{#1#2}#3}
\captionsetup[figure]{format=figcapfont,labelsep=period}
\captionsetup[table]{format=figcapfont,labelsep=period}

\makeatletter
\renewenvironment{table}
     {\renewcommand\familydefault\sfdefault\selectfont
      \@float{table}}
     {\end@float}
\makeatother

%minted (for code panes)
\RequirePackage{minted}
\usemintedstyle{friendly}
\setminted{breaklines}

%section numbering
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

%math
\usepackage{mathtools}

%biblio
\usepackage{chapterbib}