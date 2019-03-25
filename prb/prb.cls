\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prb}[2019/03/25 prb]
\LoadClass[11pt]{amsbook}
\makeatletter


\usepackage[margin=100pt,headheight=10pt]{geometry}

\newcommand{\korean}{
  \usepackage{kotex}
  \linespread{1.6}
  \renewcommand{\arraystretch}{0.625}
  \geometry{headheight=20pt}
}


\newcommand{\+}{\begin{center}$\blacklozenge$\end{center}}



\let\@@author\author
\renewcommand{\author}[1]{
  \def\lauthor{#1}
  \@@author{\small Written by \lauthor \\ \small Solved by \lauthor}
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




\setcounter{tocdepth}{2}
\def\l@subsection{\@tocline{2}{0pt}{2pc}{4pc}{}}



\usepackage{hyperref}


\makeatother