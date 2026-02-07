# Nom : Jean-François Pierre

# Création d'un script de diagnostic complet de réseau

# On commence par le Shebang pour créer le script Bash
#!/bin/bash

# Je m'inspire des exercices vus en classe pour implanter un code de couleur à mes sorties
RED='\033[0;31m'   
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
MAUVE='\033[1;35m'
NC='\033[0m'

# Utilisation des couleurs pour les futurs messages

presentation(){
    echo -e "${MAUVE}============================== ${NC}"
    echo -e "${MAUVE}   $1         ${NC}"
    echo -e "${MAUVE}============================== ${NC}"
}

print_success(){
    echo -e "${GREEN}$1 ${NC}"
}
print_warning(){
    echo -e "${YELLOW}$1 ${NC}"
}
print_error(){
    echo -e "${RED}$1 ${NC}"
}

# 1. Afficher les informations système 
show_systeminfo(){
    NOM_HOTE=$(hostname | awk '{print $1}')
    DATE=$(date "+%Y-%m-%d")
    HEURE=$(date "+%H:%M:%S")
    NOM_OS=$(systeminfo.exe | grep -a -E -i "nom" | grep -a -E -i "d'exploitation" | sed '2d' | awk -F":              " '{print $2}' | tr -d '\r')
    VERSION=$(systeminfo.exe | grep -a -E -i "version"| grep -a -E -i "d'exploitation" |  awk -F":          " '{print $2}' | tr -d '\r')
    print_success "Nom de l'hôte : $NOM_HOTE"
    print_success "Date : $DATE"
    print_success "Heure actuelle : $HEURE"
    print_success "Nom du système : $NOM_OS"
    print_success "Version du système : $VERSION"
}
show_systeminfo









