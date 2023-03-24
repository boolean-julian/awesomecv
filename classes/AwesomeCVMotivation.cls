\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../classes/AwesomeCVMotivation}[2023/03/23 Awesome CV motivation letter template by Julian Lueken]
\LoadClass[a4paper, 10pt]{article}

% Default input
\input{../classes/Packages.tex}
\input{../classes/DefaultData.tex}
\usepackage[top=4.5cm, left=2.5cm, right=2cm, bottom=2.5cm]{geometry}

% Gaps and spaces
\newcommand{\myName}{\myFirstName{} \myLastName}
\newcommand{\myBigSpace}{.5em}
\newcommand{\myLetterSpace}{2em}
\newcommand{\myHalfSpace}{1em}

% header
\newcommand{\setHeaderAndTitle}{
	\begin{center}
		\noindent
		\begin{minipage}{\textwidth}
			\flushleft
			\scriptsize \myName{} $\cdot$ \myStreet{} $\cdot$ \myCity{} $\cdot$ \myCountry\\
			\normalsize \myRecipient
		\end{minipage}

		\vspace{4em}
		\flushright
		\begin{minipage}{\textwidth}
			\flushright
			\myDate
		\end{minipage}\\[\myHalfSpace]
		\flushleft
		\begin{minipage}{\textwidth}
			\flushleft
			\textbf{\myLetterTitle}
		\end{minipage}
	\end{center}
	\vspace{\myHalfSpace}}

% goodbye
\newcommand{\setComplimentaryClose}{	
	\myComplimentaryClose\\[\myLetterSpace]
	\includegraphics[height=3em]{\mySignaturePath}
	\\[\myHalfSpace]
	\myName}

% define letter env
\newenvironment{myLetter}{\setHeaderAndTitle}{

\setComplimentaryClose}