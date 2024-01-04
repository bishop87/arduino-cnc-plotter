
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


## Assemblaggio

Video del progetto originale che illustra i vari passaggi principali sia di assemblaggio che della messa in funzione: https://www.youtube.com/watch?v=WtUIBxfddjw

## Software

 - **grbl Firmware per Arduino**: https://github.com/TGit-Tech/GRBL-28byj-48
Codice derivato dallo standard de facto per l'ambito cnc con Arduino **grbl**, consente di pilotare i 3 assi con i motori 28byj-48 ed i relativi driver più semplici dei normali stepper per cnc o stampanti 3d.
Copiare la cartella "grbl" che trovate per comodità anche in questo repo sotto il path ./lib-grbl nel path locale del PC con le librerie di ArduinoIDE (nel caso di macos /Users/nomeutente/Documents/Arduino/libraries/grbl).
 - **inkscape**: https://inkscape.org/
Famoso software open per manipolare e creare file vettoriali.
 - **jscut**: https://jscut.org/jscut.html
Consente di convertire file vettoriali svg contenenti path (eventuali font vanno convertiti in path prima con inkscape) in file gcode rispetto ai parametri della cnc configurati.
Nel path di questo repo (/jscut-settings/settings_20240105.jscut) c'è un esempio di impostazioni da caricare su jscut, nel caso è possible variare manualmente i settaggi, il pannello più importante si trova in masso a sinistra:
![jscut-settings-screen](./jscut-settings/settings-screen.png)
**Diameter** : sarebbe il diametro della fresa, nel nostro caso la larghezza del tratto disegnato dalla penna (più è fine più passate serviranno per disegnare)
**Pass Depth**: quanto dovrà andare in profondità la penna sull'asse z, si imposta un po' per tentativi
**Step Over**: percentuale di sovrapposizione delle varie passate, più il valore è basso più passate sovrapposte ci saranno, aumenterà di conseguenza il tempo e l'inchiostro usato.


- **UGS (Universal Gcode Sender)**: https://winder.github.io/ugs_website/
applicativo java based che consente di pilotare la cnc (il nostro arduino con firmware grbl) da PC via seriale (usb).
1. una volta aperto il programma selezionare la voce di menu "Machine" > "Setup Wizard"
2. Impostare i parametri di connessione alla porta seriale (firmware: GRBL; Port: nome della seriale a cui è collegato Arduino; baudrate: 115200), quindi cliccare "Connect"
3. Verificare la direzione degli assi X, Y, Z, ed eventualmente invertirla (io per la verità ho preferito invertire il connettore del driver su arduino per la X e la Y)
4. testare il movimento degli assi, misurando il reale spostamento rispetto al valore atteso ed inserire i parametri di step/mm calcolati dal programma (nel mio caso 72 step/mm sia per x che per y).
5. concludere il wizard senza modificare altro.

