%% CV-Minima Professional LaTeX Template
%%
%% Copyright (C) 2022 Bobur Zakirov <bobur.octo@gmail.com>
%%
%% This work may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3 of this
%% license or (at your option) any later version.
%%
%% Source Code: https://github.com/octoant/cv-minima
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cv-minima}[2022/06/01 v0.1 CV-Minima LaTeX document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% Load base document class
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}                 % for page layout
\RequirePackage[empty]{fullpage}
\RequirePackage{amsmath}                  % for maths
\RequirePackage{amssymb}                  % for math symbols
\RequirePackage{latexsym}                 % for additional symbols
\RequirePackage{xcolor}                   % for colors
\RequirePackage{hyperref}                 % for hyperlinks
\RequirePackage{enumitem}                 % for lists
\RequirePackage{fontawesome5}             % for icons
\RequirePackage{contour}                  % for contour plots
\RequirePackage[normalem]{ulem}           % for customize underline
\RequirePackage{titlesec}                 % for customize section
\RequirePackage[russian,english]{babel}   % for locales
\RequirePackage[utf8]{inputenc}           % for encoding
\RequirePackage[T1]{fontenc}              % for fonts

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page Layout and Additional Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}             % apply fancy page layout
\fancyhf{}                    % clear all header/footer fields
\setlength{\footskip}{4.8pt}
\setlength{\parindent}{0pt}   % clear all indentation
\setlength{\tabcolsep}{0pt}

%% Adjust page margins
\addtolength{\oddsidemargin}{-0.75in}
\addtolength{\evensidemargin}{-0.75in}
\addtolength{\textwidth}{1.5in}

\addtolength{\topmargin}{-0.75in}
\addtolength{\textheight}{1.5in}

%% Hide header and footer lines
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%% Set default font-family to Charter
\renewcommand{\familydefault}{bch}
%% Reset underline depth
\renewcommand{\ULdepth}{1.2pt}
%% Customize the underline command
\renewcommand{\underline}[1]{%
  \uline{\phantom{#1}}\llap{\contour{white}{#1}}%
}

%% Set specified fontsize to the provided text
\newcommand{\fsize}[2]{%
  {\fontsize{#1}{\baselineskip} #2}%
}

%% Set the default icon color
\newcommand{\cvColor}[1]{%
  \def\@cvColor{#1}%
}
%% Get the icon by name, available here: docs/fontawesome5.pdf
\newcommand{\icon}[2][\@cvColor]{%
  \textcolor{#1}{\faIcon{#2}}%
}

%% Customize the section command
\titleformat{\section}{\large\scshape}{}{0}{}[\color{\@cvColor}\titlerule]
%% Resize the section command spacings
\titlespacing{\section}{0pt}{*1.2}{*1.2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Command Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Provide to set variable value
\newcommand{\name}[1]{%
  \def\@name{\huge\scshape\textbf{#1}}%
}
\newcommand{\location}[1]{%
  \def\@location{\icon{map-marker-alt} #1}%
}
\newcommand{\phone}[1]{%
  \def\@phone{\icon{phone-alt} #1}%
}
\newcommand{\mail}[1]{%
  \def\@mail{\icon{envelope} \href{mailto:#1}{#1}}%
}
\newcommand{\linkedin}[1]{%
  \def\@linkedin{\icon{linkedin} \href{https://linkedin.com/in/#1}{\underline{linkedin.com/in/#1}}}%
}
\newcommand{\telegram}[1]{%
  \def\@telegram{\icon{telegram} \href{https://telegram.me/#1}{\underline{telegram.me/#1}}}%
}
\newcommand{\github}[1]{%
  \def\@github{\icon{github} \href{https://github.com/#1}{\underline{github.com/#1}}}%
}
\newcommand{\contacts}[5]{%
  \phone{#1} \mail{#2} \linkedin{#3} \telegram{#4} \github{#5}%
}

\newcommand{\cvHeader}{%
  \begin{center}%
    \vbox{\@name} \smallskip%
    \vbox{\@location} \vspace{1pt}%

    \mbox{\@phone} \space%
    \mbox{\@mail} \space%
    \mbox{\@linkedin} \vspace{1pt}%

    \mbox{\@telegram} \space%
    \mbox{\@github}%
  \end{center}%
}

\newcommand{\cvFooter}[1][\today]{%
  \vfill\centering{\small\textcolor{\@cvColor}{Updated on #1}}%
}

\newcommand{\cvSection}[2][\undefined]{%
  \ifx#1\undefined%
    \section*{#2}%
  \else%
    \section*{\parbox[b]{12pt}{\centerline{\normalsize\icon{#1}}} #2}%
  \fi%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special Environment Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{cvHeadingList}{%
  \newcommand{\cvCustomHeading}[4]{%
    \item \fsize{11pt}{\textbf{##1}} \hfill \textbf{##2} \newline \textit{##3} \hfill \textit{##4} \par%
  }%
  \newcommand{\cvProjectHeading}[3]{%
    \item \fsize{11pt}{\textbf{##1}} \raisebox{0.2ex}{|} \textit{##2} \hfill \textbf{##3} \par%
  }%
  \begin{itemize}[leftmargin=0pt,itemsep=2pt,topsep=0pt]%
}{%
  \end{itemize}%
}

\newenvironment{cvSkillsList}{%
  \newcommand{\cvItem}[2]{%
    \textbf{##1:} & {##2} \\[1pt]%
  }%
  \begin{tabular}{p{0.2\textwidth}p{0.8\textwidth}}%
}{%
  \end{tabular}%
}

\newenvironment{cvList}{%
  \newcommand{\cvItem}[1][\undefined]{%
    \item \ifx##1\undefined\else\textbf{##1:}\fi%
  }%
  \begin{itemize}[leftmargin=16pt,itemsep=0pt,topsep=-2pt]%
}{%
  \end{itemize}%
}

%% Reset list items labels value
\renewcommand{\labelitemi}{}
\renewcommand{\labelitemii}{\textbullet}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Default Values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\cvColor{black}
%% Header variables
\name{First Last}
\contacts{0 (000) 000 0000}{example@mail.com}{username}{username}{username}
\location{Postal-Code Street, District, City or Town, Region, Republic}
