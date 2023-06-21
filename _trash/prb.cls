\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prb}[2019/03/25 prb]
\LoadClass[11pt]{amsbook}
\makeatletter

\def\thisisprbcls{1}

\usepackage[margin = 100pt]{geometry}



\let\@@title\title
\renewcommand{\title}[1]{
  \def\ltitle{#1}
  \@@title{Problem Set : \ltitle}
}
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



%\setcounter{tocdepth}{2}
%\def\l@subsection{\@tocline{2}{0pt}{2pc}{4pc}{}}




\makeatother