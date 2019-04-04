% Este é um pacote para elaboração de provas na UFSC
% 
% (c) Diogo Nardelli Siebert
%
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN archives
%% in directory macros/latex/base/lppl.txt.
% 

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{ufscclass}
[19/03/2018 - Modelo para Apresentações em Sala de Aula]

\newcommand{\Handout}{0}
\DeclareOption{handout}{\renewcommand{\Handout}{1}}
\ProcessOptions\relax

\RequirePackage{ifthen}

\ifthenelse{ \equal{\Handout}{1} }
{
\LoadClass[usenames,dvipsnames,handout]{beamer} 
}
{
\LoadClass[usenames,dvipsnames]{beamer}
} 

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[portuguese]{babel}
\RequirePackage{framed}
\RequirePackage{graphicx}
\RequirePackage{mdframed}
\RequirePackage{tikz}
\RequirePackage{amsmath}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{bm}


\usetikzlibrary{patterns,decorations.pathmorphing,decorations.pathreplacing} 
\definecolor{darkblue}{RGB}{23,68,134}
\definecolor{NavyBlue}{RGB}{0, 0, 128}

\usetheme{texsx}

\usefonttheme{serif}
\setbeamersize{text margin left=15pt,text margin right=15pt}

\newcounter{mathdefexample}
\setcounter{mathdefexample}{0}
\resetcounteronoverlays{mathdefexample}
\newenvironment{mathexample}[1]
{  \stepcounter{mathdefexample}
\begin{mdframed}[linecolor=black,linewidth=0.8pt,leftmargin = 0 cm, innerleftmargin = 0.1 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.1 cm, innerbottommargin = 0.1 cm, skipbelow = 0.1 cm, backgroundcolor = NavyBlue!20]
 \textbf{\textcolor{darkblue}{Exemplo \themathdefexample:} } \begin{small} #1 \end{small} 
\begin{mdframed}[linecolor=darkblue,linewidth=0pt,leftmargin = 0 cm, innerleftmargin = 0.5 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 0.1 cm, backgroundcolor = white!20]
}
{
\vspace{-.3cm}
\end{mdframed}
\end{mdframed}
}

\newenvironment{mathexamplec}[1]
{  
\begin{mdframed}[linecolor=black,linewidth=0.8pt,leftmargin = 0 cm, innerleftmargin = 0.1 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.1 cm, innerbottommargin = 0.1 cm, skipbelow = 0.1 cm, backgroundcolor = NavyBlue!20]
 \textbf{\textcolor{darkblue}{Exemplo \themathdefexample:} } \begin{small} #1 \end{small} 
\begin{mdframed}[linecolor=darkblue,linewidth=0pt,leftmargin = 0 cm, innerleftmargin = 0.5 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 0.1 cm, backgroundcolor = white!20]
}
{
\vspace{-.3cm}
\end{mdframed}
\end{mdframed}
}


\newcounter{mathdefcounter}
\setcounter{mathdefcounter}{0}
\resetcounteronoverlays{mathdefcounter}

\newenvironment{mathdefinition}[1]
{ \stepcounter{mathdefcounter} \textcolor{darkblue}{\textbf{ Definição \themathdefcounter:} #1 } 
\vspace{-7pt}
\begin{mdframed}[linecolor=darkblue,linewidth=0.5pt,leftmargin = 0 cm, innerleftmargin = 0.2 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 2 cm]
}
{   
\end{mdframed}
\vspace{.2cm}
}

\newcounter{mathdefcorollary}
\setcounter{mathdefcorollary}{0}
\resetcounteronoverlays{mathdefcorollary}

\newenvironment{mathcorollary}[1]
{ \stepcounter{mathdefcorollary} \textcolor{darkblue}{\textbf{ Colorário \themathdefcorollary:} #1 } 
\vspace{-7pt}
\begin{mdframed}[linecolor=darkblue,linewidth=0.5pt,leftmargin = 0 cm, innerleftmargin = 0.2 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 2 cm, backgroundcolor = darkblue!1]
}
{   
\end{mdframed}
\vspace{.2cm}
}


\newcounter{mathdeftheorem}
\setcounter{mathdeftheorem}{0}
\resetcounteronoverlays{mathdeftheorem}

\newenvironment{maththeorem}[1]
{ \stepcounter{mathdeftheorem} \textcolor{darkblue}{\textbf{ Teorema \themathdeftheorem:} #1 } 
\vspace{-7pt}
\begin{mdframed}[linecolor=darkblue,linewidth=0.5pt,leftmargin = 0 cm, innerleftmargin = 0.2 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 2 cm, backgroundcolor = darkblue!10]
}
{   
\end{mdframed}
\vspace{.2cm}
}

\newcounter{mathilucounter}
\setcounter{mathilucounter}{0}
\resetcounteronoverlays{mathilucounter}

\newenvironment{mathilustration}
{ \stepcounter{mathilucounter} \textbf{ Ilustração \themathilucounter:}
\vspace{-7pt}
\begin{mdframed}[linecolor=darkblue,linewidth=0pt,leftmargin = 0 cm, innerleftmargin = 0.5 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 2 cm, backgroundcolor = darkblue!20]
}
{   
\end{mdframed}
\vspace{.2cm}
}

\resetcounteronoverlays{mathdefcounter}
\resetcounteronoverlays{mathilucounter}


\newenvironment{obsbox}
{ 
\begin{mdframed}[linecolor=darkblue,linewidth=0pt,leftmargin = 0 cm, innerleftmargin = 0.5 cm, innertopmargin = 0.25 cm , innerrightmargin = 0.2 cm, innerbottommargin = 0.2 cm, skipbelow = 2 cm, backgroundcolor = darkblue!20]
}
{   
\end{mdframed}
\vspace{.2cm}
}
\tikzstyle{na} = [baseline=-.5ex]
\tikzstyle{every picture}+=[remember picture]
