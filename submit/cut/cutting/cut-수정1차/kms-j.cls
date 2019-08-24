%%% ====================================================================
%%% @LaTeX-file{
%%%    filename  = "kms-j.cls",
%%%    version   = "0.3",
%%%    date      = "2006/12/19",
%%%    time      = "12:40:00 KST",
%%%    checksum  = "12db4e833dfc86a2edd355f56bfb4c67",
%%%    author    = "Jin-Hwan Cho",
%%%    copyright = "Copyright (c) 2006 Jin-Hwan Cho. All rights reserved.
%%%                 This class file was written based on
%%%                 jams-l.cls written by Michael Downes and
%%%                 Kmsart.cls written by K. H. Park.",
%%%    address   = "Department of Mathematics, The University of Suwon",
%%%    email     = "chofchof@ktug.or.kr",
%%%    abstract  = "This is a LaTeX documentclass for the new style of
%%%                 Journal of the Korean Mathematical Society.",
%%%    docstring = "The checksum field contains the MD5 checksum of
%%%                 this document from the 22th line.
%%%                 See RFC1321 for more details.",
%%% }
%%% ====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kms-j}[2006/12/19 v0.3 Journal of KMS documentclass]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

\LoadClass[a4paper]{amsart}[2004/08/06]
%%% ====================================================================
%%% Modifications from amsart.cls 2.20 (2004/08/06)
%%% ====================================================================
\def\volinfo{%
  {\bfseries\currentvolume} (\currentyear), No.~\number0\currentissue
}
\def\pageinfo{%
  \ifnum\start@page=\z@
    pp.~000--000
  \else
    \ifx\start@page\end@page
      p.~\start@page
    \else
      pp.~\start@page--\end@page
    \fi
  \fi
}
\def\received#1{\def\@received{#1}}
\let\@received=\@empty
\def\@setreceived{\@received\@addpunct.}
%%% Line 127: change \newline to \space and delete \@dateposted
\def\article@logo{%
  \set@logo{%
    \publname
    \ifx\@empty\currentvolume
    \else\space\volinfo, \pageinfo
    \fi
  }%
}
%%% Line 145: change \fontsize{6}{7\p@} to \footnotesize
\def\@logofont{\footnotesize}
%%% Line 240: change \textheight and \textwidth
%%%           but do not touch \headheight, \footskip, and \parindent, etc.
\textwidth=120mm
\textheight=185mm
%%% Line 534: changed only the 538th line for \\
\def\@setaddresses{\par
  \nobreak \begingroup
  \footnotesize
  \def\author##1{\nobreak\addvspace\bigskipamount}%
  \def\\{\par\nobreak}%
  \interlinepenalty\@M
  \def\address##1##2{\begingroup
    \par\addvspace\bigskipamount\indent
    \@ifnotempty{##1}{(\ignorespaces##1\unskip) }%
    {\scshape\ignorespaces##2}\par\endgroup}%
  \def\curraddr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent\curraddrname
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      ##2\par}\endgroup}%
  \def\email##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent\emailaddrname
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par}\endgroup}%
  \def\urladdr##1##2{\begingroup
    \def~{\char`\~}%
    \@ifnotempty{##2}{\nobreak\indent\urladdrname
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par}\endgroup}%
  \addresses
  \endgroup
}
%%% Line 565: make the default from 1991 to 2000
\renewcommand*\subjclass[2][2000]{%
  \def\@subjclass{#2}%
  \@ifundefined{subjclassname@#1}{%
    \ClassWarning{\@classname}{Unknown edition (#1) of Mathematics
      Subject Classification; using '2000'.}%
  }{%
    \@xp\let\@xp\subjclassname\csname subjclassname@#1\endcsname
  }%
}
%%% Line 631: add \do\received and \do\@received
\def\@cleartopmattertags{%
  \def\do##1{\let##1\relax}%
  \do\maketitle \do\@maketitle \do\title \do\@xtitle \do\@title
  \do\author \do\@xauthor \do\address \do\@xaddress
  \do\contrib \do\contribs \do\xcontribs \do\toccontribs
  \do\email \do\@xemail \do\curraddr \do\@xcurraddr
  \do\commby \do\@commby
  \do\dedicatory \do\@dedicatory \do\thanks \do\thankses
  \do\keywords \do\@keywords \do\subjclass \do\@subjclass
  \do\received \do\@received
}
%%% Line 642: adjust \topskip from 42\p@ to 30.5\p@ (646th line)
\def\ps@titlepage{\ps@plain
  \let\@oddfoot\@empty \let\@evenfoot\@empty
  \def\@oddhead{\@serieslogo\hss}%
  \let\@evenhead\@oddhead % in case an article starts on a left-hand page
}
\def\@maketitle{%
  \if@titlepage
    \addtocounter{page}\m@ne
    \thispagestyle{titlepage}
    \normalfont\normalsize
    \global\topskip30.5\p@\relax % around 4pc
    \@settitle
    \ifx\@empty\authors \else \@setauthors \fi
    \vfill
    \baselineskip14\p@
    \vtop{\centering{%
      Reprinted from the\@@par
      Journal of the Korean Mathematical Society\@@par
      Vol.~\currentvolume, No.~\number0\currentissue,\space
      \ifcase\currentmonth\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      \ \currentyear
    }}
    \newpage
    \par
    \@topnum\z@ % this prevents figures from falling at the top of page 1
    \@setcopyright
    \thispagestyle{firstpage}
  \fi
  \normalfont\normalsize
  \@adminfootnotes
  \@mkboth{\@nx\shortauthors}{\@nx\shorttitle}%
  \global\topskip30.5\p@\relax % around 4pc
  \@settitle
  \ifx\@empty\authors \else \@setauthors \fi
  \ifx\@empty\@dedicatory
  \else
    \baselineskip18\p@
    \vtop{\centering{\footnotesize\itshape\@dedicatory\@@par}%
      \global\dimen@i\prevdepth}\prevdepth\dimen@i
  \fi
  \@setabstract
  \normalsize
  \dimen@34\p@ \advance\dimen@-\baselineskip
  \vskip\dimen@\relax
} % end \@maketitle
%%% Line 664: add \@received field
\def\@adminfootnotes{%
  \let\@makefnmark\relax  \let\@thefnmark\relax
  \ifx\@empty\@date\else \@footnotetext{\@setdate}\fi
  \ifx\@empty\@received\else \@footnotetext{\@setreceived}\fi
  \ifx\@empty\@subjclass\else \@footnotetext{\@setsubjclass}\fi
  \ifx\@empty\@keywords\else \@footnotetext{\@setkeywords}\fi
  \ifx\@empty\thankses\else \@footnotetext{%
    \def\par{\let\par\@par}\@setthanks}%
  \fi
}
%%% Line 814: change \footnotesize -> \small\scshape
%%%           change \@topsep34\p@ from \@topsep30\p@
%%%           do not apply \MakeUppercase to \authors (823th line)
\def\@setauthors{%
  \begingroup
  \def\thanks{\protect\thanks@warning}%
  \trivlist
  \centering\small\scshape \@topsep30\p@\relax
  \advance\@topsep by -\baselineskip
  \item\relax
  \author@andify\authors
  \def\\{\protect\linebreak}%
  \authors%
  \ifx\@empty\contribs
  \else
    ,\penalty-3 \space \@setcontribs
    \@closetoccontribs
  \fi
  \endtrivlist
  \endgroup
}
%%% Line 1055: change \mdseries to \bfseries
\def\@secnumfont{\bfseries}
%%% Line 1119: changes part, specialsection, section, and subsection
%%%            specialsection will be used for References
\def\section{\@startsection{section}{1}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
  {\normalfont\bfseries\centering}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{.5\linespacing\@plus.7\linespacing}{.5\linespacing}%
  {\normalfont\bfseries}}
%%% ====================================================================
\endinput
