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
\ProvidesClass{cv-minima}[2022/06/01 v0.01 CV-Minima LaTeX document class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Class Options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% Load base document class
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amssymb}        % for math
\RequirePackage{mathtools}
\RequirePackage{enumitem}               % for lists
\RequirePackage{hyperref}               % for hyperlinks
\RequirePackage{latexsym}               % for additional characters
\RequirePackage{titlesec}               % for customizing section
\RequirePackage{fontawesome5}           % for icons
\RequirePackage{fancyhdr}               % for page layout
\RequirePackage[empty]{fullpage}
\RequirePackage[english,russian]{babel} % for locale
\RequirePackage[utf8]{inputenc}         % for encoding
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
\titleformat{\section}{\vspace{-8pt}\large\scshape\raggedright}{}{0}{}[\titlerule]

%% Hide header and footer line
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
