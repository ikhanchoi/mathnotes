\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2019/11/29 note]
\LoadClass[11pt]{amsbook}
\makeatletter


\usepackage[margin=100pt]{geometry}

% title
\let\@@title\title
\renewcommand{\title}[1]{
  \def\ltitle{#1}
  \@@title[\ltitle]{\Large\ltitle}
}


% author
\let\@@author\author
\renewcommand{\author}[1]{
  \def\lauthor{#1}
  \@@author[\lauthor]{\small\lauthor}
}
\author{Ikhan Choi}


% date
\def\@setdate{
	\datename\ \@date \@addpunct. \par
	\lastupdatename\ \today \@addpunct.
}
\def\datename{\textit{First Written} :}
\def\lastupdatename{\textit{Last Updated} :}
\date{\today}


% toc
\renewcommand{\tocchapter}[3]{%
\indentlabel{\@ifnotempty{#2}{\bfseries\ignorespaces#1 #2\quad}}\bfseries#3}
\renewcommand*\l@section{\@tocline{2}{0pt}{2pc}{}{}}
\renewcommand*\l@subsection{\@tocline{3}{0pt}{3pc}{}{}}


\makeatother