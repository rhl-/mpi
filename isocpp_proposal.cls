\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{isocpp_proposal} [10/19/2014 v0 Initial Class]
\LoadClass[ebook,10pt,oneside,openany,final]{memoir}
\usepackage{enumitem}% http://ctan.org/pkg/enumitem

\def\@date{\today}

\renewcommand{\thesection}{\Roman{section}} 
\renewcommand{\thesubsection}{\thesection.\Roman{subsection}}
\let\@documentnumber\@empty
\let\@project\@empty
\let\@replyo\@empty
\newcommand{\documentnumber}[1]{\gdef\@documentnumber{#1}}
\newcommand{\project}[1]{\gdef\@project{#1}}
\newcommand{\replyto}[1]{\gdef\@replyto{#1}}

\newenvironment{alwayssingle}{%
       \@restonecolfalse
       \if@twocolumn\@restonecoltrue\onecolumn
       \else\if@openright\cleardoublepage\else\clearpage\fi
       \fi}%
       {\if@restonecol\twocolumn
       \else\newpage\thispagestyle{empty}\fi}

\renewcommand\tableofcontents{%
    \@starttoc{toc}%
}

\renewcommand\maketitle{
\begin{alwayssingle}
    \begin{description}[align=left,labelsep=\parindent]
     	\item[Document number:]	{\@documentnumber}
     	\item[Date:]	{\@date}
    	\item[Project:]	{\@project}
     	\item[Reply-to:] {\@replyto}
     \end{description}
\section*{Table of Contents}
\tableofcontents
\null\vfill
\end{alwayssingle}
}
