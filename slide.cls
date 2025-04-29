\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slide}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{beamer}% works with article class
}
\ProcessOptions\relax
\LoadClass[9pt]{beamer} % handout?

\usepackage[T1]{fontenc}
\usepackage[bitstream-charter,cal]{mathdesign}
\usefonttheme{professionalfonts}

\useoutertheme{infolines,smoothbars} % smoothbars?
\setbeamertemplate{section in toc}[sections numbered]
\usecolortheme{rose,whale}
\setbeamertemplate{blocks}[rounded]


\makeatletter
\let\beamer@writeslidentry@miniframeson=\beamer@writeslidentry
\def\beamer@writeslidentry@miniframesoff{\expandafter\beamer@ifempty\expandafter{\beamer@framestartpage}{}{\clearpage\beamer@notesactions}}
\newcommand*{\miniframeson}{\let\beamer@writeslidentry=\beamer@writeslidentry@miniframeson}
\newcommand*{\miniframesoff}{\let\beamer@writeslidentry=\beamer@writeslidentry@miniframesoff}
\makeatother



\newcommand*{\contents}{
\miniframesoff
\begin{frame}{Contents}
\tableofcontents[currentsection]
\end{frame}
\miniframeson
}



\newcommand*{\references}{
\miniframesoff
\begin{frame}[allowframebreaks]{References}
\small
\nocite{*}
\setbeamertemplate{bibliography entry article}{}
\setbeamertemplate{bibliography entry title}{}
\setbeamertemplate{bibliography entry location}{}
\setbeamertemplate{bibliography entry note}{}
\setbeamertemplate{bibliography item}[text]
\bibliographystyle{alpha}
\bibliography{bib}
\end{frame}
\miniframeson
}



\theoremstyle{plain}
  \newtheorem{thm}{Theorem}[section]
  \newtheorem*{thm*}{Theorem}
  \newtheorem{prop}[thm]{Proposition}
  \newtheorem*{prop*}{Proposition}
  \newtheorem{cor}[thm]{Corollary}
  \newtheorem*{cor*}{Corollary}
  \newtheorem{lem}[thm]{Lemma}
  \newtheorem*{lem*}{Lemma}
\theoremstyle{definition}
  \newtheorem{defn}[thm]{Definition}
  \newtheorem*{defn*}{Definition}
  \newtheorem{ex}[thm]{Example}
  \newtheorem*{ex*}{Example}
\theoremstyle{remark}
  \newtheorem{rmk}[thm]{Remark}
  \newtheorem*{rmk*}{Remark}


\usepackage{tikz-cd}
\tikzcdset{
  mapsto/.code={\pgfsetarrows{Bar[width=+0pt 4.5]-tikzcd to}},
  arrow style=tikz,
  diagrams={>={Straight Barb[scale=0.625]}}
}
\usepackage{tikz}

