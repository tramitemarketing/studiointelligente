# Studio Intelligente

Sito statico con i riassunti degli insegnamenti di **Andrea Giuliodori** (EfficaceMente):
un riassunto esteso per ogni video, piu le pagine-concetto che fondono gli stessi
contenuti per argomento invece che per video.

## Com'e fatto

- `build_site.py` — il generatore. E la **copia indipendente** del motore di
  `brain-site` (il sito del second brain AI): stesso codice, cambia solo il blocco
  `CONFIGURAZIONE DEL SITO` in cima al file. Se un giorno il motore va aggiornato,
  la modifica va fatta in tutti e due i progetti.
- `docs/` — l'output pubblicato. GitHub Pages serve questa cartella dal branch `main`.
- `deploy.sh` — rigenera e pubblica (`bash deploy.sh`).

## Da dove prende i contenuti

Dal vault Obsidian, che **non** sta in questo repo:

| Sorgente | Diventa |
|---|---|
| `../ai/crescita/riassunti/*.md` | una pagina per video + le schede in homepage |
| `../ai/crescita/concetti/*.md` | la sezione **Concetti** |

I file `.md` hanno un frontmatter con `title`, `source` (l'URL YouTube, da cui il sito
ricava la miniatura), `autore`, `durata`, `visto`.

## Nota sulla sincronizzazione

Le pagine usano lo stesso worker (`brain-sync`) del second brain AI per i progressi di
lettura e per i commenti. I due siti quindi condividono quel servizio: e una scelta
reversibile, basta cambiare `SYNC_API` in `build_site.py` se un giorno serve separarli.
