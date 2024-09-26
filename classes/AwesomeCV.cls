\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../classes/AwesomeCV}[2023/03/23 Awesome CV template by Julian Lueken]
\LoadClass[a4paper, 10pt]{article}

% Default input
\input{../classes/Packages.tex}
\input{../classes/DefaultData.tex}
\RequirePackage[top=0.8cm, left=1cm, right=1cm, bottom=1cm]{geometry}

\makeatletter

% Rules and spaces
\newcommand\VRuleC{{\color{\@myMainColor}\vrule width 1pt}}
\newcommand\VRuleW{{\color{white}\vrule width 1pt}}
\newcommand\HRule{{\color{\@myMainColor}\hrule width 1pt}}
\newcommand\halfSpace{0.15em}
\newcommand\tableSpace{0.6em}
\newcommand\myFooterSpace{\hspace{3em}}

% Symbols
\newcommand{\icMapMarker}{{\color{\@myMainColor}\faMapMarker{} }}
\newcommand{\icMortarBoard}{{\color{\@myMainColor}\faGraduationCap{} }}
\newcommand{\icFlask}{{\color{\@myMainColor}\faFlask{} }}
\newcommand{\icRocket}{{\color{\@myMainColor}\faRocket{} }}
\newcommand{\icWrench}{{\color{\@myMainColor}\faWrench{} }}
\newcommand{\icUsers}{{\color{\@myMainColor}\faUsers{} }}

\newcommand{\icUser}{{\color{white}\faUser{} }}
\newcommand{\icHome}{{\color{white}\faHome{} }}
\newcommand{\icPhone}{{\color{white}\faPhone{} }}
\newcommand{\icPlane}{{\color{white}\faPaperPlane{} }}

\newcommand{\icAppl}{{\color{\@myMainColor}\faBrain{} }}
\newcommand{\icCode}{{\color{\@myMainColor}\faCode{} }}
\newcommand{\icMath}{{\color{\@myMainColor}\faEquals{} }}
\newcommand{\icMisc}{{\color{\@myMainColor}\faCodeBranch{} }}
\newcommand{\icLang}{{\color{\@myMainColor}\faCommentDots{} }} 

\newcommand{\icGitHub}{{\color{\@myMainColor}\faGithub{} }}
\newcommand{\icWeb}{{\color{\@myMainColor}\faGlobe{} }}
\newcommand{\icLinkedIn}{{\color{\@myMainColor}\faLinkedin{} }}

\newcommand{\icBike}{{\color{\@myMainColor}\faBicycle{} }}
\newcommand{\icHike}{{\color{\@myMainColor}\faMountain{} }}
\newcommand{\icGuitar}{{\color{\@myMainColor}\faGuitar{} }}
\newcommand{\icCook}{{\color{\@myMainColor}\faPizzaSlice{} }}
\newcommand{\icRead}{{\color{\@myMainColor}\faBookOpen{} }}
\newcommand{\icGame}{{\color{\@myMainColor}\faGamepad{} }}

\newcommand{\icAward}{{\color{Dandelion}\faTrophy{} }}

% Colored section bar
\newcommand{\myColorBar}[1] {
	\begin{centering}
		\vspace{1.6em}
		\begin{tikzpicture}[overlay]
			\node [
				draw=none,
				rectangle, 
				fill=\@myMainColor, 
				inner sep=1.5mm, 
				minimum width=\pagewidth,
				minimum height=0.8em
			] (a) {
				\begin{minipage}{\textwidth}
					\flushleft\color{white}\bfseries
					\textsc{#1}\strut
				\end{minipage}
			};
		\end{tikzpicture}\\
		\vspace{0.8em}
	\end{centering}
}

% DOI links / Digital Object Identifier
\newcommand{\myDoi}[1] {
	\href{https://doi.org/#1}{\textbf{\textsc{{\color{\@myMainColor}doi}}}\normalsize{} #1}	
}

% Header
%\includegraphics[width=\textwidth]{\@myProfilePicture}
\newcommand{\myNameBar} {
	\flushleft
	\begin{minipage}[c]{.20\textwidth}
		\vspace{0pt}
		\flushleft
		\begin{tikzpicture}
			\node [
				circle, 
				fill=\@myMainColor,
				inner sep = -0.133\textwidth
			] (a) {\includegraphics[width=.95\textwidth]{\@myProfilePicture}};
		\end{tikzpicture}\\

	\end{minipage}
	\hspace{.025\textwidth}\VRuleC\hspace{.025\textwidth}
	\begin{minipage}[c]{.74\textwidth}
		\vspace{0pt}
		{\Huge \@myFirstName{} \textbf{\@myLastName}}\\[.5em]
		\@myProfileText\\[0.4em]
		\href{https://\@myGithubLink}{\icGitHub \@myGithubLink}
		\hspace{0.8em}
		\href{https://\@myWebsiteLink}{\icWeb \@myWebsiteLink}
		\hspace{0.8em}
		\href{https://\@myLinkedInLink}{\icLinkedIn \@myLinkedInLink}
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
		#2 \textbf{\textsc{#1}}\\[\tableSpace]
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
	\begin{minipage}[t]{.32\textwidth}
		\vspace{0pt}
		\begin{tabular}{@{}c@{\phantom{ }}l}
			}{	
		\end{tabular}
	\end{minipage}}

\makeatother