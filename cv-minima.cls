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
