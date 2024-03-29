\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../classes/AwesomeCV}[2023/03/23 Awesome CV template by Julian Lueken]
\LoadClass[a4paper, 10pt]{article}

% Default input
\input{../classes/Packages.tex}
\input{../classes/DefaultData.tex}
\RequirePackage[top=1cm, left=1cm, right=1cm, bottom=1cm]{geometry}

\makeatletter

% Rules and spaces
\newcommand\VRuleC{{\color{\@myMainColor}\vrule width 1pt}}
\newcommand\VRuleW{{\color{white}\vrule width 1pt}}
\newcommand\HRule{{\color{\@myMainColor}\hrule width 1pt}}
\newcommand\tableSpace{0.6em}
\newcommand\myFooterSpace{\hspace{3em}}

% Symbols
\newcommand{\icMapMarker}{{\color{\@myMainColor}\faMapMarker{} }}
\newcommand{\icMortarBoard}{{\color{\@myMainColor}\faMortarBoard{} }}
\newcommand{\icFlask}{{\color{\@myMainColor}\faFlask{} }}
\newcommand{\icRocket}{{\color{\@myMainColor}\faRocket{} }}
\newcommand{\icWrench}{{\color{\@myMainColor}\faWrench{} }}

\newcommand{\icUser}{{\color{white}\faUser{} }}
\newcommand{\icHome}{{\color{white}\faHome{} }}
\newcommand{\icPhone}{{\color{white}\faPhone{} }}
\newcommand{\icPlane}{{\color{white}\faPaperPlane{} }}

\newcommand{\icCube}{{\color{\@myMainColor}\faCube{} }}
\newcommand{\icFilter}{{\color{\@myMainColor}\faFilter{} }}
\newcommand{\icKeybrd}{{\color{\@myMainColor}\faKeyboardO{} }}
\newcommand{\icMath}{{\color{\@myMainColor}\faSuperscript{} }}
\newcommand{\icTerm}{{\color{\@myMainColor}\faTerminal{} }}
\newcommand{\icLang}{{\color{\@myMainColor}\faCommentingO{} }}

\newcommand{\icGitHub}{{\color{\@myMainColor}\faGithub{} }}
\newcommand{\icWeb}{{\color{\@myMainColor}\faGlobe{} }}

% Colored section bar
\newcommand{\myColorBar}[1] {
	\begin{centering}
		\vspace{2em}
		\begin{tikzpicture}[overlay]
			\node [
				draw=none,
				rectangle, 
				fill=\@myMainColor, 
				inner sep=2mm, 
				minimum width=\pagewidth,
				minimum height=1em
			] (a) {
				\begin{minipage}{\textwidth}
					\flushleft\color{white}\bfseries
					#1\strut
				\end{minipage}
			};
		\end{tikzpicture}\\
		\vspace{1em}
	\end{centering}
}

% Header
\newcommand{\myNameBar} {
	\flushleft
	\begin{minipage}[c]{.16\textwidth}
		\vspace{0pt}
		\flushleft
		\includegraphics[width=\textwidth]{\@myProfilePicture}
	\end{minipage}
	\hspace{.025\textwidth}\VRuleC\hspace{.025\textwidth}
	\begin{minipage}[c]{.78\textwidth}
		\vspace{0pt}
		{\Huge \@myFirstName{} \textbf{\@myLastName}}\\[.5em]
		\@myProfileText\\[.5em]
		\href{https://\@myGithubLink}{\icGitHub \@myGithubLink}
		\hspace{1em}
		\href{https://\@myWebsiteLink}{\icWeb \@myWebsiteLink}
	\end{minipage}
}

% Footer
\newcommand{\myFooter} {
	\begin{centering}
		\begin{tikzpicture}[remember picture, overlay]
			\node [
				draw=none,
				anchor=north,
				rectangle, 
				fill=\@myMainColor, 
				inner sep=2mm, 
				minimum width=\pagewidth,
				minimum height=1em,
				yshift=-1mm
			] at (current page text area.south) {
				\begin{minipage}{\textwidth}
					\strut
					\centering\color{white}\footnotesize
					\icPlane{} \@myEmail
					\myFooterSpace
					\icPhone{} \@myPhone
					\myFooterSpace
					\icHome{} \@myStreet, \@myCity, \@myCountry
				\end{minipage}
			};
		\end{tikzpicture}
	\end{centering}
}

% Signature
\newcommand{\mySignature} {
	\begin{centering}
		\begin{tikzpicture}[remember picture, overlay]
			\node [
				draw=none, 
				anchor=east,
				yshift=0.7cm
			] at (current page text area.south east) {
				\includegraphics[height=3em]{\@mySignaturePath}
			};
		\end{tikzpicture}
	\end{centering}
}

% Section with bars
\newenvironment{mySection}[1]{\myColorBar{#1}}{}

% Subsection tables
\newenvironment{mySubsection}[2]{
	\begin{minipage}[t]{.49\textwidth}
		\vspace{0pt}
		#2 \textbf{#1}\\[\tableSpace]
		\begin{tabular}{@{}r!{\VRuleW}l}
			}{
		\end{tabular}
	\end{minipage}}
\newenvironment{mySkillSubsection}{
	\begin{minipage}[t]{.49\textwidth}
		\vspace{0pt}
		\begin{tabular}{@{}c@{\phantom{ }}l!{\VRuleW}l}
			}{
		\end{tabular}
	\end{minipage}}
\newenvironment{myInterestSubsection}{
	\begin{minipage}[t]{.49\textwidth}
		\vspace{0pt}
		\begin{tabular}{@{}l}
			}{	
		\end{tabular}
	\end{minipage}}

\makeatother