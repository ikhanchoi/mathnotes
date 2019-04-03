\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exp}[2018/10/29 exp]
\LoadClass[11pt]{amsart}
\makeatletter


\usepackage[margin=100pt]{geometry}

\let\@@title\title
\renewcommand{\title}[1]{
  \def\ltitle{#1}
  \@@title[\ltitle]{\Large\ltitle}
}

\let\@@author\author
\renewcommand{\author}[1]{
  \def\lauthor{#1}
  \@@author{\small\lauthor}
}

\renewcommand{\datename}{\textit{Last Update}:}

\author{Ikhan Choi}
\date{\today}

\makeatother