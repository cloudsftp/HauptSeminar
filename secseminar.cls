%%% secseminar.cls
%%% Guido Schmitz <guido.schmitz@sec.uni-stuttgart.de>
%%% Tim Würtele <tim.wuertele@sec.uni-stuttgart.de>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{secseminar}[2019/10/28]

\RequirePackage{xkeyval}%
\define@key{secseminar.cls}{lang}[ngerman]{%
  \def\langvalue{#1}%
}
\ExecuteOptionsX{lang}
\ProcessOptionsX%

\LoadClass[a4paper,abstracton,10pt]{scrartcl}
\RequirePackage{fullpage}

\RequirePackage[\langvalue]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{hologo}
\RequirePackage[numbers,sort,square]{natbib}
\RequirePackage{microtype}

\RequirePackage{ifthen}
\ifthenelse{\equal{\langvalue}{ngerman}}
 {
  \def\institute{Institut für\newline Informationssicherheit}
  \def\institutenobreak{Institut für Informationssicherheit}
 }
 {
  \def\institute{Institute of\newline Information Security}
  \def\institutenobreak{Institute of Information Security}
 }


%%% Taken from uni-stuttgart-cs-cover.sty
%%% with modifications

\def\MCS@type{Hauptseminarausarbeitung}
\def\MCS@institute{sec}
\def\MCS@number{}
\def\MCS@title{\@title}
\def\MCS@author{\@author}
\def\MCS@examiner{Prof.~Dr.~Ralf Küsters}

\newcommand{\supervisor}[1]{\def\MCS@supervisor{#1}}
\newcommand{\coursename}[1]{\def\MCS@coursename{#1}}
\newcommand{\coursesemester}[1]{\def\MCS@coursesemester{#1}}


% ------------------------------
% define language specific labels:
% ------------------------------
% - labels are defined seperate for each language
% - if language is not set, german is used
% ------------------------------
\def\labelsenglish{
	\gdef\@labelExaminer{Examiner}%
	%\gdef\@labelprueferin{Examiner}%
	\gdef\@labelSupvervisor{Supervisor}%
	%\gdef\@labelbetreuerin{Supervisor}%
	\gdef\@labelCourse{Course of Study}%
	\gdef\@labelcrk{CR-Classification}%
	\gdef\@labelUniversity{~\newline University of Stuttgart}%
	\gdef\@labelDept{Faculty of Computer Science}%

	%the labels are written in German, because these are the official terms given by the regulations ("Prüfungsordnung")
	%For a detailed discussion see https://github.com/latextemplates/uni-stuttgart-computer-science-cover/pull/10
	\gdef\@labelTypeStudy{Studienarbeit}%
	\gdef\@labelTypeDiplom{Diplomarbeit}%
	\gdef\@labelTypeBachelor{Bachelorarbeit}%
	\gdef\@labelTypeMaster{Masterarbeit}%
	\gdef\@labelTypeProjectINF{Projekt-INF}%
	\gdef\@labelTypeFachstudie{Fachstudie}%
	\gdef\@labelTypeProzessanalyse{Prozessanalyse}%
        \gdef\@labelTypeSeminar{Seminarausarbeitung}%
	
	\gdef\@labelCourseCS{Informatik}%
	\gdef\@labelCourseSE{Softwaretechnik}%
	\gdef\@labelCourseMCL{Computerlinguistik}%
	\gdef\@labelCourseTK{Technische Kybernetik}%
	\gdef\@labelCourseMSV{Maschinelle Sprachverarbeitung}%
	\gdef\@labelCourseBIS{Wirtschaftsinformatik}%
	\gdef\@labelCourseSimTech{Simulation Technology}%

	\gdef\@labelCourseName{Course}%
	\gdef\@labelCourseSemester{Semester}%
        
	% institute names
	\gdef\@labeliaas{Institute of Architecture of Application Systems}%
	\gdef\@labelipvs{Institute of Parallel and Distributed Systems}%
	\gdef\@labelfmi{Institute of Formal Methods in Computer Science}%
	\gdef\@labeliste{Institute of Software Technology}%
	\gdef\@labeliti{Institute of Computer Architecture and Computer Engineering}%
	\gdef\@labeliris{Institute of Computer-aided Product Development Systems}%
	\gdef\@labelvis{Institute for Visualization and Interactive Systems}%
        \gdef\@labelsec{Institute of Information Security}%
	
	\gdef\@labelAffirmation{Declaration}%
	\gdef\@AffirmationText{I hereby declare that the work presented in this thesis is entirely my own and that
		I did not use any other sources and references than the listed ones.
		I have marked all direct or indirect statements from other sources contained therein as quotations.
		Neither this work nor significant parts of it were part of another examination procedure.
		I have not published this work in whole or in part before.
		The electronic copy is consistent with all submitted copies.
	}
	\gdef\@labelSignature{\ place, date, signature}
}

\def\labelsgerman{
	\gdef\@labelExaminer{Veranstalter/in}%
	\gdef\@labelSupvervisor{Betreuer/in}%
	\gdef\@labelCourse{Studiengang}%
	\gdef\@labelcrk{CR-Klasse}%
	\gdef\@labelUniversity{~\newline Universität Stuttgart}%
	\gdef\@labelDept{Fakultät Informatik, Elektrotechnik und Informationstechnik}%
	
	\gdef\@labelTypeStudy{Studienarbeit}%
	\gdef\@labelTypeDiplom{Diplomarbeit}%
	\gdef\@labelTypeBachelor{Bachelorarbeit}%
	\gdef\@labelTypeMaster{Masterarbeit}%
	\gdef\@labelTypeProjectINF{Projekt-INF}%
	\gdef\@labelTypeFachstudie{Fachstudie}%
	\gdef\@labelTypeProzessanalyse{Prozessanalyse}%
    \gdef\@labelTypeSeminar{Seminarausarbeitung}%
	
	\gdef\@labelCourseCS{Informatik}%
	\gdef\@labelCourseSE{Softwaretechnik}%
	\gdef\@labelCourseMCL{Computerlinguistik}%
	\gdef\@labelCourseTK{Technische Kybernetik}%
	\gdef\@labelCourseMSV{Maschinelle Sprachverarbeitung}%
	\gdef\@labelCourseBIS{Wirtschaftsinformatik}%
	\gdef\@labelCourseSimTech{Simulation Technology}%
	
	\gdef\@labelCourseName{Veranstaltung}%
	\gdef\@labelCourseSemester{Semester}%
	
	% institute names
	\gdef\@labeliaas{Institut für Architektur von Anwendungssystemen}%
	\gdef\@labelipvs{Institut für Parallele und Verteilte Systeme}%
	\gdef\@labelfmi{Institut für Formale Methoden der Informatik}%
	\gdef\@labeliste{Institut für Softwaretechnologie}%
	\gdef\@labeliti{Institut für Technische Informatik}%
	\gdef\@labeliris{Institut für Rechnergestützte Ingenieursysteme}%
	\gdef\@labelvis{Institut für Visualisierung und Interaktive Systeme}%
        \gdef\@labelsec{Institut für Informationssicherheit}%
	
	\gdef\@labelAffirmation{Erklärung}%
	\gdef\@AffirmationText{Ich versichere, diese Arbeit selbstständig verfasst zu haben.
	Ich habe keine anderen als die angegebenen Quellen benutzt und alle wörtlich oder sinngemäß aus anderen Werken übernommene Aussagen als solche gekennzeichnet.
	Weder diese Arbeit noch wesentliche Teile daraus waren bisher Gegenstand eines anderen Prüfungsverfahrens.
	Ich habe diese Arbeit bisher weder teilweise noch vollständig veröffentlicht.
	Das elektronische Exemplar stimmt mit allen eingereichten Exemplaren überein.
	}
	\gdef\@labelSignature{\ Ort, Datum, Unterschrift}

	\renewcommand\abstractname{Kurzfassung}
}

% set those labels according to the set language
\newcommand{\USCCover@setLanguage}{
	\def\0{english}
	\ifx\langvalue\0
		\labelsenglish
	\else
		\labelsgerman
	\fi
}

% set \@labelType if matched
\newcommand{\USCCover@setType}{
	\gdef\@labelType{\MCS@type}
	\def\1{\MCS@type}
	% dont remove last two braces / empty else clause
	\def\0{diplom}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeDiplom}}{}
	\def\0{study}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeStudy}}{}
	\def\0{bachelor}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeBachelor}}{}
	\def\0{master}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeMaster}}{}
	\def\0{fachstudie}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeFachstudie}}{}
	\def\0{projectinf}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeProjectINF}}{}
	\def\0{seminar}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelType{\@labelTypeSeminar}}{}
}

% ------------------------------		
% Institute addresses
% ------------------------------

% general university address
\gdef\@labelAddress{\@labelUniversity\\Universitätsstraße 38\\D--70569 Stuttgart}

\newcommand{\USCCover@setInstitute}{
	% use specified text if institute does not match
	\gdef\@labelInstitute{\MCS@institute}
	
	\def\1{\MCS@institute}
	% dont remove last two braces / empty else clause
	\def\0{ipvs}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labelipvs\\\@labelAddress}}{}
	\def\0{iaas}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labeliaas\\\@labelAddress}}{}
	\def\0{fmi}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labelfmi\\\@labelAddress}}{}
	\def\0{iste}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labeliste\\\@labelAddress}}{}
	\def\0{iti}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labeliti\\\@labelUniversity\\Pfaffenwaldring 47\\D--70569 Stuttgart}}{}
	\def\0{iris}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labeliris\\\@labelAddress}}{}
	\def\0{vis}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labelvis\\\@labelAddress}}{}
        \def\0{sec}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labelsec\\\@labelAddress}}{}
	\def\0{fac}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelInstitute{\@labelDept\\\@labelAddress}}{}
}


% ------------------------------		
% Evaluate course option and set course
% ------------------------------
\newcommand{\course}[1]{
	% use specified text if course does not match
	\gdef\@labelCourseValue{#1}
	
	\def\1{#1}
	% dont remove last two braces / empty else clause
	\def\0{cs}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseCS}}{}
	\def\0{se}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseSE}}{}
	\def\0{mcl}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseMCL}}{}
	\def\0{msv}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseMSV}}{}
	\def\0{bis}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseBIS}}{}
	\def\0{simtech}\ifthenelse{\equal{\0}{\1}}{\gdef\@labelCourseValue{\@labelCourseSimTech}}{}
}

 
% ------------------------------		
% helping commands
% ------------------------------
% - \USCCover@umrandet
% - \USCCover@TBlabel
% - \USCCover@TBlist
% ------------------------------
\def\USCCover@umrandet{\global\let\@USCCover@umrandet=\fbox}
\let\@USCCover@umrandet\relax

\newcommand{\USCCover@TBlabel}[1]{\textbf{#1}\hfil}

\newenvironment{USCCover@TBlist}{%
  \list{}{\labelwidth 45mm \leftmargin 70mm % alt: 35/60 mm
          \rightmargin 20mm \let\makelabel\USCCover@TBlabel}%
}{\endlist}

% ------------------------------
% usable commands
% ------------------------------
% - \Titelblatt
% - \Versicherung
% (contain code from old diplomtitel.sty)
% ------------------------------
\newcommand{\Titelblatt}{%
% ------------------------------
% evaluate options by calling those functions that set text accordingly
% ------------------------------
\USCCover@setLanguage
\USCCover@setType
\USCCover@setInstitute

  \cleardoublepage
  %\ifthenelse{\boolean{MCS@setCoverPageNumberToMinusOne}}{\setcounter{page}{-1}}{}
\begingroup
	\newcommand{\USCCover@isTwoColumn}{false}
	\if@twocolumn \renewcommand{\USCCover@isTwoColumn}{true} \onecolumn \fi
  \pagestyle{empty}%
  \thispagestyle{empty}%
  %\fontfamily{ppl}\selectfont
  %
  \@normalsize \@setsize\normalsize{13.6pt}\xipt\@xipt
  %
  \frenchspacing    % besser, da viele Abk. (<- da ist schon eine)
  \parskip=0pt\parindent=0pt\null
  %
  % Damit alles richtig funktioniert, mu"s der Ursprung auf die
  %  tats"achliche linke obere Ecke des Blattes gelegt werden (ohne den
  %  bekannten 1in Offset also).
  %  Ausserdem werden die beiden Seitenr"ander auf 28mm + 4.5mm Falz
  %  gesetzt, die Seitenh"ohe auf DIN A4-H"ohe.
  %
  \hsize=154mm       %% DIN A4: 210mm - 2*28mm
  \columnwidth=\hsize \linewidth=\hsize
  %
  \dimen0=0pt
  \advance\dimen0-\oddsidemargin
  \advance\dimen0 2.6mm %% 
  \advance\dimen0 4.5mm %% 
 \hbox to 0pt{\kern\dimen0\vbox to\topskip{%
  \dimen0=-1in
  \advance\dimen0-\topmargin
  \advance\dimen0-\headheight
  \advance\dimen0-\headsep
  \vskip\dimen0\relax
  %

  \vskip 20mm\relax %%%

  \vbox to 70mm{
  \begin{center}%
    \@labelInstitute
  \end{center}
  \vfill}%

  \vskip -4mm\relax
  %%%%% ==> 155mm (Titel: 165mm/Autor: 195mm) von oben
  %%% Die Box kann max. 100mm breit und 60mmm hoch sein,
  %%% au"serdem wird noch ein Rand von mind. 2.5mm gelassen
  %%% Even if \centering is not recommended (see l2tabu or nag package), just replacing it with {\centering{...}} doesn't work as \centering doesn't center on the complete page
  \centerline{\fboxsep=0pt
    \@USCCover@umrandet{\hbox to 100mm{\hfil
    \vbox to 60mm{\hsize=95mm\parindent=0pt
      \vskip 10mm plus 30mm minus 7.5mm
      \begin{center}\@setsize\large{14pt}\xiipt\@xiipt %%\large
        	\ifx\MCS@number\empty
				\@labelType
			\else
				\@labelType\ Nr.\,\MCS@number
			\fi
      \end{center}%
      \vskip 12.5mm plus 12.5mm minus 10mm
      \begin{center}\@setsize\LARGE{22pt}\xviipt\@xviipt %%\LARGE
        \textbf{ \MCS@title}
      \end{center}%
      \vskip 10mm plus 10mm minus 7.5mm
      \begin{center}\@setsize\large{14pt}\xiipt\@xiipt %%\large
        \MCS@author
      \end{center}%
      \vskip 17.5mm plus 35mm minus 12.5mm}\hfil}}}%
  \vskip 20mm %%%%%

  \vbox to 40mm{%
    \begin{USCCover@TBlist}%
      \item[\@labelCourse: ]\@labelCourseValue     
      \item[\@labelCourseName: ]\MCS@coursename
      \item[\@labelCourseSemester: ]\MCS@coursesemester
    \end{USCCover@TBlist}%
    \vfill}%
  \vbox to 45mm{%
    \begin{USCCover@TBlist}%
      \item[\@labelExaminer:]\MCS@examiner
      \item[\@labelSupvervisor:]\MCS@supervisor
    \end{USCCover@TBlist}%
    \vfill}%
  % \vbox to 70mm{%%%%% ==> 85 mm von oben
  %   \begin{USCCover@TBlist}%
  %     %\item[\@labelStartdate:]\MCS@startdate
  %     %\item[\@labelEnddate:]\MCS@enddate
  %     % \ifx\@crk\relax \else
  %     %     \vskip 1.5\baselineskip
  %     %     \item[\@labelcrk:]\MCS@crk
  %     % \fi
  %   \end{USCCover@TBlist}%
  %   \vfill}%

 \vss}\hss}%
  %
  \thispagestyle{empty}%
  \cleardoublepage % if twoside add a blank page after cover
  % set counter to start at 1 after the clear(double)page
  %\ifthenelse{\boolean{MCS@setPageNumberToOne}}{\setcounter{page}{1}}{}
  \newcommand{\USCCover@true}{true}
  \ifthenelse{\equal{\USCCover@isTwoColumn}{\USCCover@true}}{\twocolumn}{}
\endgroup
}
\newcommand{\Coverpage}{\Titelblatt}

\newcommand{\Versicherung}{
  \cleardoublepage
  \newcommand{\USCCover@isTwoColumn}{false}
  \if@twocolumn \renewcommand{\USCCover@isTwoColumn}{true} \onecolumn \fi
  \null
  \vskip 5cm\relax
	\begin{center}
		\begin{minipage}[t]{10cm}
			\hbox{\textbf{\@labelAffirmation}}%
			\vskip 1cm\relax
			%\begin{flushleft}%
			\@AffirmationText
			%\end{flushleft}%
			\vskip 4cm\relax
			\hrulefill
			\vskip .4\baselineskip
			\hbox{\@labelSignature}
		\end{minipage}
	\end{center}
  \clearpage
  \newcommand{\USCCover@true}{true}
  \ifthenelse{\equal{\USCCover@isTwoColumn}{\USCCover@true}}{\twocolumn}{}
}
\newcommand{\Affirmation}{\Versicherung}


%%% End uni-stuttgart-cs-cover.sty






\RequirePackage{etoolbox}

\AfterEndPreamble{

\setcounter{page}{-1}

\Coverpage 

\thispagestyle{empty}
\Affirmation

}% End AfterEndPreamble