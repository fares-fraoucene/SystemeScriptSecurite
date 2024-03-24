#!/bin/bash# 
set -euo pipefail

check_updates() {
echo "Recherche des mises à jour disponibles..."
sudo apt update
sudo apt list --upgradable
}


update_packages() {
	echo "Mise à jour des logiciels en cours..."
	sudo apt upgrade
	echo "Mise à jour terminée." 
}

check_updates

read -p "Voulez-vous mettre à jour les logiciels ? (O/n) " answer 
if [[ $answer =~ [Oo]$ ]]; then
	update_packages
else
	echo "Aucune mise à jour des logiciels n'a été effectuée."
fi
