#!/bin/bash
set -euo pipefail

current_date=$(date +%Y-%m-%d_%H:%M)

backup_file="backup_$current_date.tar"

source_directory="Plateforme"

destination_directory="/home/la_plateforme/Documents/Backups/"

tar -czvf "$destination_directory$backup_file" "$source_directory"




