\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{thesavelyx}[2013/12/21 v1.0 Perrick Penet-Avez]
% Basé sur le travail de Matthieu Perreira Da Silva
% Si vous voulez pouvoir préciser vos options via \usepackage
%\LoadClassWithOptions{scrbook}
%Sinon voici les options "conseillées"
\LoadClass[frenchb,english,12pt]{scrbook}
\KOMAoptions{
    paper=a4,
    cleardoublepage=empty,
    headinclude=true,
    footinclude=false,
	chapterprefix,
	numbers=noenddot
}
\addtokomafont{disposition}{\rmfamily}

\newcommand{\justified}{%
  \rightskip\z@skip%
  \leftskip\z@skip}


\setkomafont{dictumtext}{\flushleft\itshape\small}
\setkomafont{dictumauthor}{\normalfont}
\renewcommand*\dictumwidth{.75\textwidth}
\renewcommand*\dictumauthorformat[1]{--- #1\bigskip\bigskip\bigskip\bigskip}
\renewcommand*\raggeddictumtext{\justified}
\renewcommand*\dictumrule{}

%%%%% \KOMAoptions{
%%%%%     paper=a4,
%%%%%     cleardoublepage=empty,
%%%%%     headinclude=true,
%%%%%     footinclude=false,
%%%%%     twoside=semi,
%%%%% 	chapterprefix,
%%%%% 	numbers=noenddot
%%%%% }

% pour changer les marges de la page de titre
\RequirePackage{geometry}

% pour les images (page de titre entre autres)
\RequirePackage{graphicx}

% Pour les encadrements
\RequirePackage{framed}

% Algorithmes
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{\textbf{Pr\'e-conditions:}}
\renewcommand{\algorithmicensure}{\textbf{Post-conditions:}}
\renewcommand{\algorithmicend}{\textbf{fin}}
\renewcommand{\algorithmicif}{\textbf{si}}
\renewcommand{\algorithmicthen}{\textbf{alors}}
\renewcommand{\algorithmicelse}{\textbf{sinon}}
\renewcommand{\algorithmicelsif}{\algorithmicelse\ \algorithmicif}
\renewcommand{\algorithmicendif}{\algorithmicend\ \algorithmicif}
\renewcommand{\algorithmicfor}{\textbf{pour}}
\renewcommand{\algorithmicforall}{\textbf{pour tout}}
\renewcommand{\algorithmicdo}{\textbf{faire}}
\renewcommand{\algorithmicendfor}{\algorithmicend\ \algorithmicfor}
\renewcommand{\algorithmicwhile}{\textbf{tant que}}
\renewcommand{\algorithmicendwhile}{\algorithmicend\ \algorithmicwhile}
\renewcommand{\algorithmicloop}{\textbf{boucler}}
\renewcommand{\algorithmicendloop}{\algorithmicend\ \algorithmicloop}
\renewcommand{\algorithmicrepeat}{\textbf{r\'ep\'eter}}
\renewcommand{\algorithmicuntil}{\textbf{jusqu'\`a}}
\renewcommand{\algorithmicprint}{\textbf{afficher}}
\renewcommand{\algorithmicreturn}{\textbf{renvoyer}}
\renewcommand{\algorithmiccomment}[1]{//#1}

% Encodage utf8 et fontes qui vont bien
\RequirePackage[T1]{fontenc}
\RequirePackage[latin9]{inputenc}
\RequirePackage{marvosym}
\RequirePackage{pifont}

%Gestion des headers
\RequirePackage{scrpage2}
\pagestyle{scrheadings}
\setheadsepline{0.4pt}
\renewcommand\partpagestyle{empty}

% les couleurs pour hyperef
\RequirePackage{xcolor}

% Gestion de la langue
\RequirePackage{babel}
%Guillemets a la française
\addto\extrasfrench{\providecommand{\og}{\leavevmode\flqq~}\providecommand{\fg}{\ifdim\lastskip>\z@\unskip\fi~\frqq}}
% espace avant le ':' dans les titres de figures et tables
\renewcommand*{\captionformat}{~:\ }

% pour les maths
\RequirePackage{amsthm}
\RequirePackage{amsmath}

% si pdf latex est utilisé
\RequirePackage{ifpdf}
\ifpdf
 % définition de la version de format de PDF
 %\pdfminorversion=5
 % alors on charge des fontes plus adaptées
 \IfFileExists{lmodern.sty}
  {\RequirePackage{lmodern}}{}
\fi

% Mis en forme des titres de chapitre
% Note : si vous voulez une minitoc, malheureusement minitoc est incompatible avec titlesec.
% Cependant rien n'est perdu : décommentez le RequirePackage{titletoc} quelques lignes en dessous, 
% lisez la doc du package titletoc et décommentez la fin de cette commande !
\RequirePackage[{toctitles}]{titlesec}
%\RequirePackage{titletoc}
\titleformat{\chapter}[display]
{\sectfont}
{\filcenter
\LARGE
\enspace \chaptertitlename~\thechapter\enspace}
{0.5cm}
{\huge\bfseries\filcenter}
%[\small\vspace*{4pc}%
%\startcontents
%\printcontents{l}{1}{\setcounter{tocdepth}{2}}]

% Pour sauter automatiquement une ligne après un titre de style paragraph et subparagraph
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedsection\normalfont\sectfont\nobreak\size@paragraph}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedsection\slshape\sectfont\nobreak\size@subparagraph}}
  \renewcommand*{\size@subparagraph}{\small}%

% Pour que la table des matière et la liste des figure et des tableaux
% apparaissent automatiquement dans la table des matières
\RequirePackage{tocbibind}

% Ajustement de la taille réservée aux numéros de figures et tableaux dans les tables de figures et tableaux
% C'est le dernier chiffre qu'il faut changer si on veut plus de place !
\renewcommand{\l@figure}{\@dottedtocline{1}{1.5em}{2.8em}}
\renewcommand{\l@table}{\@dottedtocline{1}{1.5em}{2.8em}}

% pour générer de beau bookmarks pdf
\RequirePackage[unicode=true, bookmarks=true, bookmarksnumbered=true, bookmarksopen=false,
 breaklinks=false, pdfborder={0 0 0}, backref=false, colorlinks=false]{hyperref}

%\hypersetup{ pdfborderstyle={/S/U/W 1}, linkbordercolor={0 .5 1}, citebordercolor={0 .5 1}, urlbordercolor={0 .5 1}, filebordercolor={0 .5 1}}
\RequirePackage{bookmark}

% \ChapterOutsidePart and \ChapterInsidePart: permet de créer des chapitre hors et dans des parties
% avec un toc et des bookmarks cohérents
\newcommand{\ChapterOutsidePart}{%
   \phantomsection
   \addtocontents{toc}{\protect\vspace{0.5cm}}
   \def\toclevel@chapter{-1}\def\toclevel@section{0}\def\toclevel@subsection{1}}
\newcommand{\ChapterInsidePart}{%
   \phantomsection
   \def\toclevel@chapter{0}\def\toclevel@section{1}\def\toclevel@subsection{2}}

% la partie résumé de chaque chapitre
\newcommand{\chapterSummary}
{\newpage
\phantomsection
\addsec{Points clés}
}

% Le corps du résumé
\newenvironment{chapterSummaryBody}
{\let\savelabelitemi=\labelitemi
\renewcommand{\labelitemi}{\ding{111}}
\begin{framed}
\vspace{-5mm}}
{\renewcommand\labelitemi{\savelabelitemi}
\end{framed}}


\newcommand{\myprenote}{Cette bibliographie sélective réunit les ouvrages cités dans ce travail ou consultés pour sa préparation.}

% La gestion de la bibliographie
\addto\captionsfrench{\renewcommand{\refname}{Bibliographie}}
\renewcommand\@biblabel[1]{}
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}
      \myprenote
      \bigskip\bigskip\bigskip\bigskip
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin20pt% change 20 pt according to your needs
            \advance\leftmargin\labelsep
            \setlength\itemindent{-20pt}% change using the inverse of the length used before
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `theenumiv' environment}}%
      \endlist}

