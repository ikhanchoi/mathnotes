\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{large}[2019/11/29 large]
\LoadClass[a4paper]{report}
\usepackage[margin=1in]{geometry}
\usepackage{setspace}
\onehalfspacing
\renewcommand{\arraystretch}{0.8}
\usepackage[T1]{fontenc}
\usepackage[bitstream-charter,cal]{mathdesign}

\newif\if@kor
\@korfalse
\DeclareOption{kor}{\@kortrue}
\ProcessOptions\relax

\if@kor
\usepackage[hangul]{kotex}
\setmainfont{XCharter}
\setmainhangulfont{HakgyoansimSantteut}[
  UprightFont = *batangM,
  ItalicFont = *dotumM,
  Path = {../},
  Extension = {.otf}
]
\newfontfamily\dgms{HakgyoansimDunggeunmiso}[
  UprightFont = *R,
  BoldFont = *B,
  Path = {../},
  Extension = {.otf}
]
\newfontfamily\alj{HakgyoansimAllimjang}[
  UprightFont = *R,
  BoldFont = *B,
  Path = {../},
  Extension = {.otf}
]

%\usepackage{titlesec}
%\titleformat*{\section}{\Large\alj}
%\titleformat*{\subsection}{\large\alj}

\@beginparpenalty=10000

\fi