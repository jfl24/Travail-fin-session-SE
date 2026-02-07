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
    # On utilise la commande systeminfo pour obtenir les informations sur l'hôte
    NOM_OS=$(systeminfo.exe | grep -a -E -i "nom" | grep -a -E -i "d'exploitation" | sed '2d' | awk -F":              " '{print $2}' | tr -d '\r')
    VERSION=$(systeminfo.exe | grep -a -E -i "version"| grep -a -E -i "d'exploitation" |  awk -F":          " '{print $2}' | tr -d '\r')
    presentation "Informations du système"
    print_success "Nom de l'hôte : $NOM_HOTE"
    print_success "Date : $DATE"
    print_success "Heure actuelle : $HEURE"
    print_success "Nom du système : $NOM_OS"
    print_success "Version du système : $VERSION"
    echo -e "\n"
}

# 2. Afficher la configuration réseau
show_networkconfig(){
    # On recherche une adresse IP locale, qui commence par 192.168..., mais qui n'est pas la passerelle par défaut
    IP_LOCALE=$(ipconfig.exe | grep -a -i "ipv4" | grep -E -i -a "192\.168\.[0-9]{1}\.[0-9]{1}" | grep -v -i -a "passerelle" | awk -F": " '{print $2}' | tr -d '\r')
    # On recherche "passerelle" dans ipconfig
    IP_PASSERELLE=$(ipconfig.exe | grep -a -i "passerelle" | grep -E -i -a "192\.168\.[0-9]{1}\.[0-9]{1,}" | awk -F": " '{print $2}' | tr -d '\r')
    # On doit faire "ipconfig.exe /all" pour voir les serveurs DNS et on fait un grep de " ServeursDNS"
    SERVEUR_DNS_MAIN=$(ipconfig.exe /all | grep -E -a -i  "serveurs dns" | awk -F": " '{print $2}' | tr -d '\r') 
    OTHER_SERVEURS_DNS=$(ipconfig.exe /all | grep -A 1 -E -a -i  "serveurs dns" | tail -n 1 | awk '{print $NC}' | sed 's/                               //' | tr -d '\r')
    presentation "Configuration Réseau"
    print_success "Adresse IP locale : $IP_LOCALE"
    print_success "Passerelle par défaut : $IP_PASSERELLE"
    print_success "Serveur DNS principal : $SERVEUR_DNS_MAIN"
    print_success "Autres serveurs DNS : $OTHER_SERVEURS_DNS"
    echo -e "\n"
}

show_systeminfo
show_networkconfig












