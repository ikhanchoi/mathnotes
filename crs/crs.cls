\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{crs}[2019/01/21 crs]
\LoadClass[11pt]{amsbook}
\makeatletter


\usepackage[margin=100pt,headheight=10pt]{geometry}


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




\setcounter{tocdepth}{2}
\def\l@subsection{\@tocline{2}{0pt}{2pc}{4pc}{}}



\usepackage{hyperref}


\makeatother