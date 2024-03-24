#!/bin/bash
set -euo pipefail

display_error() {
    echo "Erreur: $1"
    exit 1
}

read -p "Veuillez saisir le genre (Boy/Girl/Neutral) : " gender

if ! [[ "${gender}" =~ ^(Boy|Girl|Neutral|boy|girl|neutral)$ ]]; then
    display_error "Genre invalide. Veuillez saisir Boy, Girl ou Neutral."
fi

api_url="https://api.api-ninjas.com/v1/babynames?gender=${gender}"

api_key="/C/0nm6UgpqiIY+iiW8JjQ==S88zD5POn2oWOpEU"

request_log="log_api/request.log"
response_log="log_api/response.log"
error_log="log_api/error.log"

curl -s -H "X-Api-Key: ${api_key}" "${api_url}" > "$response_log" 2> "$error_log"

if [ $? -ne 0 ]; then
    display_error "La requête à l'API a échoué. Veuillez consulter le fichier de journalisation des erreurs : $error_log"
fi
echo "$(date): Genre demandé : $gender" >> "$request_log"
echo "La réponse de l'API a été enregistrée dans : $response_log"
