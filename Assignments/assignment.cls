\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{assignment}

\PassOptionsToPackage{letterpaper,paper=portrait}{typearea}

\LoadClass[letterpaper,fleqn,
    DIV=16,fontsize=12pt,twoside=semi,
    parskip=full-,
    headings=standardclasses]{scrartcl}

\usepackage{scrlayer-scrpage}
\clearpairofpagestyles
\ohead{\pagemark}

\RequirePackage{mathtools}
\RequirePackage[fullfamily,footnotefigures,swash,lf,mathtabular]{MinionPro}
\RequirePackage[eqno,enum,lineno]{tabfigures}
\RequirePackage{pifont}

\RequirePackage{enumitem}
\usepackage[table,usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\RequirePackage[capitalise,nameinlink]{cleveref}
\RequirePackage{booktabs}
\RequirePackage{ragged2e}
\RequirePackage{dcolumn}
\RequirePackage{mdframed}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage[outline]{contour}

\usetikzlibrary{patterns}
\usetikzlibrary{arrows,arrows.meta}
\contourlength{0.15em}

% Reduce vertical spacing around headings
\RedeclareSectionCommand[
  runin=false,afterindent=false,
  beforeskip=0.5\baselineskip,
  afterskip=0.5\baselineskip
]{section}
\RedeclareSectionCommand[
  runin=false,afterindent=false,
  beforeskip=0pt
]{paragraph}
% Allow display-mode math to break across pages
\allowdisplaybreaks[1]
% Set RaggedRight paragraph indent
\setlength{\RaggedRightParindent}{\parindent}
% Create additional column types
\newcolumntype{d}[1]{D{.}{.}{#1}}
\newcolumntype{R}{>{\raggedleft\arraybackslash}p{1in}}
% Bold enumerate numbering
\setlist[enumerate,1]{label=\bfseries\arabic*.,ref={\arabic*}}
%\setlist{itemsep=\baselineskip,parsep=0\baselineskip}
% Sections counted in alphabet and formatted as ``Parts''
\renewcommand*\thesection{\Alph{section}}
\renewcommand\sectionformat{Part~\thesection:\enskip}
\crefname{section}{part}{parts}
\crefname{enumi}{question}{questions}

\newmdenv[leftline=true,rightline=false,topline=false,bottomline=false,linewidth=2pt]{solution}

\newcommand{\@course}{}
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}

\newcommand{\@name}{}
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}

\newcommand{\@doctitle}{}
\newcommand{\doctitle}[1]{\renewcommand{\@doctitle}{#1}}

\newcommand{\beginassignment}[1]{

\@ohead[{#1}]{\pagemark}
\thispagestyle{plain}

\@course \\
\@name \\
\@date \hfill Your full name: \underline{\hspace{3.25in}}

\vspace{0.7\baselineskip}
\textbf{\LARGE \@doctitle}
\vspace{0.3\baselineskip}

}

\newcommand{\beginsolutions}[1]{

\@ohead[{#1}]{\pagemark}
\thispagestyle{plain}

\@course \\
\@name \\
\@date

\vspace{0.7\baselineskip}
\textbf{\LARGE \@doctitle}

}

\newcommand{\ornamentalrule}{
{\centering

\vspace{-0.5\baselineskip}
\Pisymbol{MinionPro-Extra}{121}
\vspace{-0.5\baselineskip}

}
}

