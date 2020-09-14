\version "2.20.0"

\header {
  title = "Valse Op 64 n°2"
  composer = "Chopin"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key e \major
  \numericTimeSignature
  \time 3/4
  \partial 4
  \tempo "Tempo giusto."
}

right = \relative c'' {
  \global
  % En avant la musique !
   gis-2 <gis e'-5>2. <fisis-1 dis'-4>2.
   
   
   
}

left = \relative c' {
  \global
  % En avant la musique !
  r4
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
