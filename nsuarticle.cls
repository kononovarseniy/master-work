\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsuarticle}[2021/06/05 NSU article class]

\LoadClass[14pt, a4paper]{extarticle}

% Specify used fonts
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setromanfont{Times New Roman} 
\setsansfont{Arial} 
\setmonofont{Courier New}
% Set cirillic fonts for polyglossia
\newfontfamily{\cyrillicfont}{Times New Roman} 
\newfontfamily{\cyrillicfontrm}{Times New Roman}
\newfontfamily{\cyrillicfonttt}{Courier New}
\newfontfamily{\cyrillicfontsf}{Arial}

% Language specific features and hyphenation
\RequirePackage{polyglossia}
\setmainlanguage[babelshorthands=true]{russian}
\setotherlanguage{english}
\usepackage[strict=false,autostyle=true,english=american]{csquotes}

\newcommand{\EN}[1]{\foreignlanguage{english}{#1}}

% Page layout
\RequirePackage[hmargin={3cm, 1.5cm}, vmargin={2.0cm, 2.0cm}]{geometry}
\setlength{\parindent}{0.5cm} % Paragraph indentation
\setlength{\parskip}{0pt} % Spacing between paragraphs
\setlength{\textfloatsep}{10pt} %  Skip after 'top' floats
\setlength{\intextsep}{10pt} % Skip before AND after 'here' floats

\RequirePackage{setspace} % Line Spacing
\onehalfspacing % Other options: \singlespacing, \doublespacing and \setstretch{1.1}
\RequirePackage{indentfirst} % Make the first line of all sections, be indented by the usual paragraph indentation

% Header/footer (page numbers)
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % Reset header and fotter to get rid of extra page number.
\fancyhf[CH]{\thepage} % The letters indicate the position.
\renewcommand{\headrulewidth}{0pt} % Thickness of the decorative lines.
\renewcommand{\footrulewidth}{0pt} % Thickness of the decorative lines.

% Section title format
\RequirePackage{titlesec}
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}
\titleformat{\section}{\normalsize\bfseries}{\thesection}{14pt}{}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{14pt}{}
\titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{14pt}{}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

% Table of contents
\RequirePackage{tocloft}
\RequirePackage{titletoc}
\dottedcontents{section}[3em]{}{1.7em}{1pc}
\dottedcontents{subsection}[4em]{}{2.3em}{1pc}
\dottedcontents{subsubsection}[5em]{}{2.9em}{1pc}
\renewcommand{\cftaftertoctitle}{\thispagestyle{empty}} % Change to 'fancy' to add page number or 'empty' to hide
\addto\captionsrussian{%
    \renewcommand{\contentsname}{\normalsize{Оглавление}}%
    \renewcommand{\figurename}{Рис.}%
    \renewcommand{\tablename}{Таблица}%
}

% Table and figure captions
\RequirePackage[labelsep=period, font=small, skip=10pt]{caption}
\RequirePackage[hypcap]{subcaption} % Figure subcaptions
\captionsetup[figure]{belowskip=0pt}
\captionsetup[subfigure]{labelformat=empty, belowskip=0pt}
\captionsetup[table]{font=small, skip=0pt, belowskip=0pt}

% Formulas
\RequirePackage{amsmath}  % Math formulas
\RequirePackage{amsfonts} % Math fonts
\RequirePackage{amssymb}
\RequirePackage{mathrsfs} % Some changes in math fonts
\RequirePackage{commath}  % Math commands (\od[2]{f}{x} -- ordinary derivative; \pd -- partial derivative)
\RequirePackage[version=4]{mhchem} % Package for chemical equation typesetting

% % Content
\RequirePackage[obeyspaces]{url}
\RequirePackage{multirow} % Extensions for tables
\RequirePackage{tabularx} % Tables
\RequirePackage{booktabs} % Tables
\RequirePackage{siunitx}  % Numbers and units
\input{siunitx.tex}

\RequirePackage{float}
\RequirePackage{placeins} % \FloatBarrier
\RequirePackage{flafter} % flafter package ensures that floats don't appear until after they appear in the code.
\RequirePackage{graphicx} % Extended graphics options
\RequirePackage[usenames, dvipsnames, table]{xcolor} % Colors (Should be loaded before TikZ and svg )
\RequirePackage{tikz}     % Package to create graphic elements
% \RequirePackage{svg}      % Package to insert SVG images
\RequirePackage[colorlinks=false, linkcolor=Maroon, citecolor=ForestGreen]{hyperref} % References
\RequirePackage{enumitem}
\RequirePackage[subfolder, siunitx]{gnuplottex}
\RequirePackage{listings}
\RequirePackage{pdfpages}
\RequirePackage{ulem}
