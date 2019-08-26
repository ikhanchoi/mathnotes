\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{crs}[2019/01/21 crs]
\LoadClass[11pt]{amsbook}
\makeatletter


\usepackage[margin=100pt,headheight=13pt]{geometry}


\let\@@author\author
\renewcommand{\author}[1]{
  \def\lauthor{#1}
  \@@author{\small Lecture by \lauthor \\ \small Notes by \lauthor}
}

\author{Ikhan Choi}





\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\nouppercase{\leftmark}}
\fancyhead[R]{\nouppercase{\rightmark}}
\fancyfoot[C]{\scriptsize{\thepage}}

\let\@@section\section
\renewcommand{\section}{\newpage\@@section}



\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
\providecommand{\@dotsep}{4.5}
\renewcommand*\l@subsection{\@tocline{2}{0pt}{2pc}{}{}}
\renewcommand*\l@subsubsection{\@tocline{3}{0pt}{4pc}{}{}}






\iffalse
\usepackage[T1]{fontenc}
\usepackage{etoolbox}
\patchcmd{\@thm}{\thm@headfont{\scshape}}{\thm@headfont{\scshape\bfseries}}{\S}{}
\fi


\makeatother