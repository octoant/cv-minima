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
\def\@className{cv-minima}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Class Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{\@className}[2022/06/01 v0.01 CV-Minima LaTeX document class]

%% Option value inheritance
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% Load base document class
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amssymb}  % for math
\RequirePackage{mathtools}
\RequirePackage{contour}          % for contouring
\RequirePackage{enumitem}         % for lists
\RequirePackage{hyperref}         % for hyperlinks
\RequirePackage{latexsym}         % for additional characters
\RequirePackage{titlesec}         % for customizing section
\RequirePackage{fontawesome5}     % for icons
\RequirePackage{xcolor}           % for colors
\RequirePackage{ulem}             % for customizing underlines
\RequirePackage{fancyhdr}         % for page layout
\RequirePackage[empty]{fullpage}
\RequirePackage[english]{babel}   % for locale
\RequirePackage[utf8]{inputenc}   % for encoding
\RequirePackage[T1]{fontenc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page Layout and Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}                 % apply page style
\fancyhf{}                        % clear all header and footer fields
\setlength{\footskip}{4.8pt}

%% Adjust page margins
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1.0in}

\addtolength{\topmargin}{-0.5in}
\addtolength{\textheight}{1.0in}

%% Set table column separator value to zero
\setlength{\tabcolsep}{0in}

%% Customize the \section command
\titleformat{\section}{\large\scshape}{}{0}{}[\titlerule]
%% Resize the \section command spacings
\titlespacing{\section}{0pt}{*1}{*1}

%% Getting \emph back to normal
\normalem

%% Hide header and footer line
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%% Reset underline depth
\renewcommand{\ULdepth}{1.8pt}

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

\def\@iconColor{black}

\newcommand{\iconColor}[1]{%
  \def\@iconColor{#1}%
}

\newcommand{\name}[1]{%
  \def\@name{{\huge\scshape\textbf{#1}}}%
}
\newcommand{\location}[1]{%
  \def\@location{\textcolor{\@iconColor}{\locationIcon} #1}%
}
\newcommand{\phone}[1]{%
  \def\@phone{\textcolor{\@iconColor}{\phoneIcon} #1}%
}
\newcommand{\mail}[1]{%
  \def\@mail{\textcolor{\@iconColor}{\mailIcon} \href{mailto:#1}{#1}}%
}
\newcommand{\linkedin}[1]{%
  \def\@linkedin{\textcolor{\@iconColor}{\linkedinIcon} \href{https://linkedin.com/in/#1}{\underline{linkedin.com/in/#1}}}%
}
\newcommand{\telegram}[1]{%
  \def\@telegram{\textcolor{\@iconColor}{\telegramIcon} \href{https://telegram.me/#1}{\underline{telegram.me/#1}}}%
}
\newcommand{\github}[1]{%
  \def\@github{\textcolor{\@iconColor}{\githubIcon} \href{https://github.com/#1}{\underline{github.com/#1}}}%
}


\newcommand{\cvHeader}{%
  \begin{center}%
    \vbox{\@name}\vspace{2pt}%
    \vbox{\@location}\vspace{2pt}%

    \mbox{\@phone}\quad%
    \mbox{\@mail}\quad%
    \mbox{\@linkedin}\vspace{1pt}%

    \mbox{\@telegram}\quad%
    \mbox{\@github}\quad%
  \end{center}%
}

\newcommand{\cvSection}[1]{%
  \section*{#1}%
}

\newcommand{\cvFooter}[1][\today]{%
  \centerline{\small\emph{Updated on \today}}%
}
