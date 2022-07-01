%% CV-Minima Professional LaTeX template
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
\RequirePackage{amsmath,amssymb}        % for math
\RequirePackage{contour}                % for contour plots
\RequirePackage{enumitem}               % for lists
\RequirePackage{hyperref}               % for hyperlinks
\RequirePackage{latexsym}               % for additional symbols
\RequirePackage{fontawesome5}           % for icons
\RequirePackage{xcolor}                 % for colors
\RequirePackage{titlesec}               % for customize section
\RequirePackage{fancyhdr}               % for page layout
\RequirePackage[empty]{fullpage}
\RequirePackage[normalem]{ulem}         % for customize underline
\RequirePackage[russian,english]{babel} % for locales
\RequirePackage[utf8]{inputenc}         % for encoding
\RequirePackage[T1]{fontenc}            % for fonts

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page Layout and Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}                       % apply fancy layout
\fancyhf{}                              % clear all header and footer
\setlength{\footskip}{4.8pt}
\setlength{\parindent}{0pt}             % clear all indentation

%% Adjust page margins
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1.0in}

\addtolength{\topmargin}{-0.5in}
\addtolength{\textheight}{1.0in}

%% Customize the \section command
\titleformat{\section}{\large\scshape}{}{0}{}[\titlerule]
%% Resize the \section command spacings
\titlespacing{\section}{0pt}{*1.2}{*1.2}

%% Hide header and footer lines
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%% Reset underline depth
\renewcommand{\ULdepth}{1.2pt}

%% Customize the \underline command
\renewcommand{\underline}[1]{%
  \uline{\phantom{#1}}\llap{\contour{white}{#1}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Additional Macros & Commands Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\locationIcon{\faIcon{map-marker-alt}}
\def\phoneIcon{\faIcon{phone-alt}}
\def\mailIcon{\faIcon{envelope}}
\def\linkedinIcon{\faIcon{linkedin}}
\def\telegramIcon{\faIcon{telegram}}
\def\githubIcon{\faIcon{github}}

\def\iconColor{black}

\newcommand{\setIconColor}[1]{%
  \def\iconColor{#1}%
}

\newcommand{\name}[1]{%
  \def\@name{\huge\scshape\textbf{#1}}%
}
\newcommand{\location}[1]{%
  \def\@location{\textcolor{\iconColor}{\locationIcon} #1}%
}
\newcommand{\phone}[1]{%
  \def\@phone{\textcolor{\iconColor}{\phoneIcon} #1}%
}
\newcommand{\mail}[1]{%
  \def\@mail{\textcolor{\iconColor}{\mailIcon} \href{mailto:#1}{#1}}%
}
\newcommand{\linkedin}[1]{%
  \def\@linkedin{\textcolor{\iconColor}{\linkedinIcon} \href{https://linkedin.com/in/#1}{\underline{linkedin.com/in/#1}}}%
}
\newcommand{\telegram}[1]{%
  \def\@telegram{\textcolor{\iconColor}{\telegramIcon} \href{https://telegram.me/#1}{\underline{telegram.me/#1}}}%
}
\newcommand{\github}[1]{%
  \def\@github{\textcolor{\iconColor}{\githubIcon} \href{https://github.com/#1}{\underline{github.com/#1}}}%
}
\newcommand{\contacts}[5]{%
  \phone{#1} \mail{#2} \linkedin{#3} \telegram{#4} \github{#5}%
}

\newcommand{\cvHeader}{%
  \begin{center}%
    \vbox{\@name} \smallskip%
    \vbox{\@location} \smallskip%

    \mbox{\@phone} \space%
    \mbox{\@mail} \space%
    \mbox{\@linkedin} \smallskip%

    \mbox{\@telegram} \space%
    \mbox{\@github}%
  \end{center}%
}

\newcommand{\cvHeading}[2][\undefined]{%
  \ifdefined#1%
    \section*{\parbox[b]{12pt}{\centerline{\normalsize\textcolor{\iconColor}{#1}}} #2}%
  \else%
    \section*{#2}%
  \fi%
}

\newcommand{\cvSubHeading}[4]{%
  % TODO: implement
}

\newcommand{\cvProjectHeading}[3]{%
  % TODO: implement
}

\newcommand{\cvFooter}[1][\today]{
  % TODO: \centerline{\small\emph{Updated on #1}}
}
