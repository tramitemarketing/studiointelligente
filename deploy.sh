#!/usr/bin/env bash
# Rigenera Studio Intelligente dai riassunti in ../ai/crescita/ e lo pubblica su GitHub.
# GitHub Pages serve la cartella docs/ del branch main: dopo il push il sito
# si aggiorna da solo in un paio di minuti.
# Uso:  bash deploy.sh
set -e
cd "$(dirname "$0")"
python build_site.py
git add -A
git commit -m "update studio intelligente $(date +%F)" || echo "niente da committare"
git push
echo "Fatto: push eseguito, il sito si aggiorna da solo tra poco."
