\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../classes/AwesomeCVMotivation}[2023/03/23 Awesome CV motivation letter template by Julian Lueken]
\LoadClass[a4paper, 10pt]{article}

% Default input
\input{../classes/Packages.tex}
\input{../classes/DefaultData.tex}
\RequirePackage[top=4.5cm, left=2.5cm, right=2cm, bottom=2.5cm]{geometry}

\makeatletter

% Gaps and spaces
\newcommand{\myName}{\@myFirstName{} \@myLastName}
\newcommand{\myBigSpace}{.5em}
\newcommand{\myLetterSpace}{2em}
\newcommand{\myHalfSpace}{1em}

% header
\newcommand{\setHeaderAndTitle}{
	\begin{center}
		\noindent
		\begin{minipage}{\textwidth}
			\flushleft
			\scriptsize \myName{} $\cdot$ \@myStreet{} $\cdot$ \@myCity{}\\
			\normalsize \@myRecipient
		\end{minipage}

		\vspace{4em}
		\flushleft
		\begin{minipage}{.69\textwidth}
			\vspace{0pt}
			\flushleft
			\textbf{\@myLetterTitle}
		\end{minipage}\hfill
		\begin{minipage}{.29\textwidth}
			\vspace{0pt}
			\flushright
			\@myDate{}s
		\end{minipage}
	\end{center}
	\vspace{\myHalfSpace}}

% goodbye
\newcommand{\setComplimentaryClose}{	
	\@myComplimentaryClose\\[\myHalfSpace]
	\includegraphics[height=3em]{\@mySignaturePath}
	\\[\myHalfSpace]
	\@myFirstName{} \@myLastName}

% define letter env
\newenvironment{myLetter}{\setHeaderAndTitle}{

\setComplimentaryClose}

\makeatother