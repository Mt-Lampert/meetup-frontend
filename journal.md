## Recherchethemen:

* Svelte-Testing
* Carousel-Component
* dynamisch nachgeladene components
  * Darunter verstehe ich Components, die nach einem Mausklick nachgeladen werden. Das brauchen wir fuer die wachsende Kachelwand anstelle von Karussell. aber das ist zukunftsmusik.
* hover-effekte

## NEXT:

* [ ] Weiter im Kurs mit Max.

## 2022-02-10

* [x] GalleryMeetup-Component erstellen. Brauchen wir fuers Karussell.
* [x] Karussell-Einheit installieren fuer die Landing Page
* [x] Dummy-Meetups ins Karussell integrieren.

Das mit dem Karussell hat sich erst mal erledigt. Bis auf weiteres.  Es ist mir nicht gelungen, das Svelte-Karussel hier in SvelteKit mit Vite flott zu bekommen. Irgendwas ging immer schief, und zwar ohne dass ich irgendwie etwas machen konnte. Hab es dann mit
[tiny-slider](http://ganlanyuan.github.io/tiny-slider/)
versucht. War auch ein Schlag ins Wasser. Hat mich gefrustet. Auf der anderen Seite: SvelteKit ist ein sehr junges Projekt, und Vite ist es auch. Da koennen solche Sachen schon mal vorkommen. Vielleicht hab ich auch irgendetwas noch nicht richtig verstanden. Dann wird sich das alles erledigen, wenn es soweit ist.

Ich habe stattdessen die andere Loesung mit den dynamischen Gallery-Cards implementiert. Die ging richtig gut. Sogar mit Transitions. Hat mich fuer den Frust mit dem Karussell wieder entschaedigt.

## 2022-02-08 -- Tagesplanung:
* [x] 12 Dummy-Meetups in DE, alle mit ID, title, Datum, image und code (z.B. '489fa'; mit dem Code werden img-Dateinamen zugeordnet.)
* [x] 12 Dummy-Bilder fuer verschiedene Deutsche Staedte, die den Dummy-Meetups zugeordnet werden.
  
### 11:41 
Ich hab alles fertig gemacht, und mit Hilfe des Bulma-Columns-Containers in index.svelte eingebaut. Hat insgesamt 1 Stunde gedauert, und das Ergebnis ist hoffnungslos geil! Bin total von den Socken, wie vergleichsweise einfach das mit Bulma ging und wie gut das Ergebnis ausschaut! Und Svelte hat mit seiner geradlinigen, simplen Art ebenfalls immens zum schnellen, effektiven Ergebnis beigetragen.


## 2022-02-08 07:39

Ich hab gestern das erste Mal ins Karoussell hineingeschaut.  Ich werde es doch mit Karoussell machen. Schon um das Svelte-Karoussell-Element auszuprobieren; es ist naemlich sehr vielversprechend. Die "wachsende Kachelwand" wird auf spaeter verschoben.

Jetzt geht es langsam wirklich in die Implementierung. Bis jetzt war alles Installation und Projekt-Vorbereitung. Jetzt geht es los! Und das ist sehr, sehr aufregend!

Planung ist jetzt alles: Was wir brauchen, und in welcher Reihenfolge wir es durchfuehren. Eine Minute Planungsarbeit erspart uns 30 Minuten Fehlersuche. Also wollen wir uns Muehe geben.



## 2022-02-05 16:52

Nach drei Fehlversuchen hab ich es endlich geschafft, Jest fuer das Unit Testing in dieses Projekt einzubinden. 
[Hier](https://dockyard.com/blog/2022/01/27/how-to-set-up-jest-in-a-sveltekit-app)
die Seite, nach deren Anleitung das moeglich wurde. Ich bin extrem froh und dankbar, dass das
geklappt hat. Jetzt muss ich nur noch ein gutes Tutorial fuer den Einsatz von Jest finden. Aber die Specs lesen sich gut!

Ganz allgemein ist das, was mich vom Durchstarten abhaelt, nur die Orientierung und die Installation der wichtigen Werkzeuge.

## 2022-02-03 10:50

Das Svelte-Material-Design werde ich NICHT nehmen. Bin taktisch falsch vorgegangen. Ich haette einen Branch machen sollen, der die ganze Installation fuer SMUI beinhaltet. Dann koennte ich jetzt einfach 
wieder zurueck zum `master` und den SMUI-Branch loeschen koennen, so wie das gestern gelaufen ist.

Na gut. Wieder was gelernt. Bzw. wiederentdeckt.

Hab mich entschlossen, auf _Bulma_ umzusteigen. Kann genau so viel wie Material, ist aber flexibler und mir schon besser bekannt. Die Standard-Einstellungen von Bulma werden reichen, bis die Features alle implementiert sind. Dann koennen wir Farbschemen und all die anderen Sachen anpassen.


## 2022-02-02 09:49

Wir sollten uns Gedanken darueber machen, in welcher Reihenfolge wir die Features abarbeiten und in welcher Reihenfolge wir recherchieren. Am Anfang steht natuerlich die Landing Page. Dafuer brauchen wir natuerlich auch schon Svelte UI. 



## 2022-02-01 16:53

Im Originalprojekt von Max wurde fuer die Startseite ein Karussel gemacht. Karussels waren zu der Zeit totaaal angesagt. Heute haben wir 2022.  Der Trend zum Spielzeug und damit auch zum Karussel liegt so langsam hinter uns. 

Mein Ersatzvorschlag: Ein 3x2-Raster mit kleinen Meetup Cards. Wenn der Benutzer mehr will, kann er auf bis zu 24 Karten (3x8) nachladen. Ein Hover vergroessert die Karte und hebt sie heraus, ein Klick fuehrt auf die Single Page. Ich werde dazu ein Feature schreiben und einen Wireframe mit Inkscape anlegen.


