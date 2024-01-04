# CNC Plotter con Arduino

Progetto per realizzare un mini plotter cnc pilotato con arduino e motori passo passo 28byj-48

## Hardware

- 3 x motori passo passo 28byj-48 (io ho usato quelli a 5V)
- 3 x driver motori ULN2003 (solitamente venduti con i motori)
- 1 x arduino nano
- 1 x cuscinetto a sfera tipo 608
- 1 x LM7805 (o modulo stepdown per ottenere 5V)
- 1 x alimentatore 12V
- Superficie di legno su cui fissare il materiale
- Viti varie di recupero
- Assi e supporti stampati in 3D, vedi sezione dedicata
- Pazienza, ne serve abbastanza

## Componenti 3D

Progetto Thingiverse principale da cui sono partito: https://www.thingiverse.com/thing:4796222 


## Software

- **grbl Firmware per Arduino**: https://github.com/TGit-Tech/GRBL-28byj-48
Codice derivato dallo standard de facto per l'ambito cnc con Arduino **grbl**, consente di pilotare i 3 assi con i motori 28byj-48 ed i relativi driver più semplici dei normali stepper per cnc o stampanti 3d.
- **inkscape**: https://inkscape.org/
Famoso software open per manipolare e creare file vettoriali
- **jscut**: https://jscut.org/jscut.html
Consente di convertire file vettoriali svg contenenti path (eventuali font vanno convertiti in path prima con inkscape) in file gcode rispetto ai parametri della cnc configurati
- **UGS (Universal Gcode Sender)**: https://winder.github.io/ugs_website/
applicativo java based che consente di pilotare la cnc (il nostro arduino con firmware grbl) da PC via seriale (usb).

## Assemblaggio
Video del progetto originale che illustra i vari passaggi principali sia di assemblaggio che della messa in funzione: https://www.youtube.com/watch?v=WtUIBxfddjw
