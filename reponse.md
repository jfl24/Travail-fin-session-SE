# Laboratoire 2 - Introduction aux Réseaux
## Systèmes d'exploitation - Collège de Maisonneuve

---

**Nom :** Pierre

**Prénom :** Jean-François

**Groupe :** Aucun

**Lien GitHub du devoir** : https://github.com/jfl24/Travail-fin-session-SE

**Date de remise :** Jeudi 13 février 2026
---

## Barème récapitulatif

| Section | Points | Note |
|---------|--------|------|
| Partie 1 : Questions théoriques | 20 | /20 |
| Partie 2 : Commandes réseau | 25 | /25 |
| Partie 3 : Analyse Wireshark | 25 | /25 |
| Partie 4 : Script Bash | 30 | /30 |
| **TOTAL** | **100** | **/100** |

---

# Partie 1 : Questions théoriques (20 points)

## Question 1 - Modèle OSI (5 points)

### a) Complétez le tableau (2.5 pts)

| Protocole/Élément | N° Couche | Nom de la couche |
|-------------------|-----------|------------------|
| HTTP              |      7    |    Application   |
| Adresse IP        |      3    |    Réseau        |
| Câble Ethernet    |      2    |    Liaison       |
| TCP               |      4    |    Transport     |
| Adresse MAC       |      2    |    Liaison       |

### b) Différence entre le modèle OSI et TCP/IP (2.5 pts)

```
Votre réponse : 
En fait, le modèle OSI n'a jamais existé dans le réel.  Il a été concu dans les années 80 pour bien comprendre la structure 
du modèle TCP/IP.  Le modèle TCP/IP, lui, existe bien dans le réel et est LE modèle utilisé pour les réseaux informatiques depuis les années 70. 
Le modèle OSI contient 7 couches, contrairement à 4 pour le modèle TCP/IP.  Le modèle OSI est plus complexe car il sert à bien comprendre le fonctionnement 
des protocoles des réseaux.  Dans le modèle TCP/IP, les couches application, présentation et session sont regroupées en une seule couche application, et les couches liaison et physique sont regroupées dans une seule couche "accès réseau".


```

---

## Question 2 - Adresses IP (5 points)

### a) Adresses privées ou publiques (2.5 pts)

| Adresse IP | Privée / Publique |
|------------|-------------------|
| 192.168.1.50 |     Privée      |
| 8.8.8.8    |       Publique    |
| 10.0.0.1   |       Privée      |
| 172.20.5.100 |     Privée      |
| 200.100.50.25 |    Publique    |

### b) Qu'est-ce qu'un masque de sous-réseau ? À quoi sert-il ? (2.5 pts)

```
Votre réponse :
Le masque de sous-réseau permet de distinguer la partie réseau et la partie hôte d'une adresse IP.  Il sert à connaître l'adresse d'un réseau local pour ensuite distribuer les adresses IP entre les différents appareils d'un sous-réseau.  Souvent, par exemple, dans un réseau local domiciliaire, le masque de sous-réseau est de 255.255.255.0, ce qui signifie que l'adresse du réseau occupe les 3 premiers octets de l'adresse IP, et chaque appareil est identifié dans le quatrième octet.  Par exemple, si l'adresse de mon réseau local est de 192.168.2.0, chacun de mes appareils (carte Wi-Fi, cellulaire, ChromeCast, etc.) peut avoir une adresse IP entre 192.168.2.1 et 192.168.2.254


```

---

## Question 3 - Protocoles (10 points)

### a) Expliquez le fonctionnement du protocole ARP. Pourquoi est-il nécessaire ? (3 pts)

```
Votre réponse : 
Le protocole ARP sert à identifier les appareils qui utilisent une adresse IP en obtenant leur adresse MAC (unique à chaque appareil).  Il est nécessaire car, pour qu'un appareil envoie une trame à un autre appareil, il doit connaître l'adresse MAC de l'appareil.  Il permet aussi de s'assurer que lorsqu'un appareil envoie des données à une adresse IP, il envoie bien les données à la bonne destination.  Par exemple, le routeur d'un réseau local utilise souvent le protocole ARP pour s'assurer que l'adresse IP d'un ordinateur est toujours associée à l'adresse MAC de cet ordinateur.  Il sert à empêcher que des données soient envoyées à une adresse IP, mais que cette adresse IP ne corresponde plus à un appareil connu du réseau local.


```

### b) Différence entre une requête DNS de type A et de type AAAA ? (2 pts)

```
Votre réponse :
Une requête DNS de type A permet de connaître l'adresse IPv4 associée à un nom de domaine, tandis qu'une requête DNS de type AAAA permet de connaître l'adresse IPv6 qui correspond à un nom de domaine.  Par contre, beaucoup de sites Web ont seulement une adresse IP de type IPv4, mais pas IPv6, alors que l'IPv6 est une méthode d'adressage encore moins utilisée. 


```

### c) Expliquez ce que fait la commande `ping` au niveau du protocole ICMP. Quels types de messages sont échangés ? (3 pts)

```
Votre réponse :
La commande 'ping' envoie des paquets de données très légers (souvent au nombre de 4) et demande à la destination de lui retourner les paquets en envoyant la demande "Echo Request" pour chaque paquet.  Si la destination est joignable, elle va retourner les paquets à la source en retournant aussi le message "Echo Reply" pour chaque paquet.  Si la destination n'est pas joignable, les paquets ne seront pas retournés et seront perdus.  


```

### d) Sur quel port et avec quel protocole de transport fonctionne DNS par défaut ? Pourquoi ce choix ? (2 pts)

```
Votre réponse :
Le protocole DNS passe par le port 53 et il utilise principalement le protocole de transport UDP.  Il utilise le protocole UDP car celui-ci est plus rapide que le TCP et crée moins de trafic sur les serveurs car il ne nécessite pas une connexion au même niveau que le protocole TCP.



```

---

# Partie 2 : Commandes réseau (25 points)

## Exercice 1 : Configuration réseau (10 points)

### a) Configuration réseau

**Commande utilisée :**
```bash

```

**Adresse IP :**
```

```

**Masque de sous-réseau :**
```

```

**Nom de l'interface réseau principale :**
```

```

### b) Passerelle par défaut

**Commande utilisée :**
```bash

```

**Adresse de la passerelle :**
```

```

### c) Serveurs DNS

**Commande utilisée :**
```bash

```

**Serveurs DNS configurés :**
```

```

> 📸 **Capture d'écran 1** : Insérez votre capture montrant la configuration réseau
> 
>![Capture 1](captures/capture1_config_reseau.png)

---

## Exercice 2 : Tests de connectivité avec ping (8 points)

### a) Ping vers localhost (127.0.0.1) - 4 paquets

**Commande exacte utilisée :**
```bash

```

**Résultat (succès/échec) :**
```

```

**Temps moyen de réponse :**
```

```

### b) Ping vers la passerelle - 4 paquets

**Résultat (succès/échec) :**
```

```

**Temps moyen de réponse :**
```

```

### c) Ping vers 8.8.8.8 - 4 paquets

**Résultat (succès/échec) :**
```

```

**Temps moyen de réponse :**
```

```

### d) Si le ping vers 8.8.8.8 fonctionne mais pas vers google.com, quel serait le problème probable ?

```
Votre réponse :


```

> 📸 **Capture d'écran 2** : Insérez votre capture des tests ping
> 
> >![Capture 2](captures/capture2_ping.png)

---

## Exercice 3 : Table ARP et résolution DNS (7 points)

### a) Table ARP

**Commande utilisée :**
```bash

```

**Nombre d'entrées :**
```

```

**Une entrée (IP et MAC) :**
```

```

### b) Requête DNS pour www.collegemaisonneuve.qc.ca

**Commande utilisée :**
```bash

```

**Adresse IP obtenue :**
```

```

### c) Commande `dig` pour github.com - TTL

**TTL (Time To Live) de l'enregistrement :**
```

```

> 📸 **Capture d'écran 3** : Insérez votre capture de la table ARP et d'une requête DNS
> 
> >![Capture 3](captures/capture3_arp_dns.png)

---

# Partie 3 : Analyse Wireshark (25 points)

## Exercice 4 : Capture et analyse ICMP (10 points)

### Analyse d'un paquet "Echo (ping) request"

| Information | Valeur observée |
|-------------|-----------------|
| Adresse MAC source | |
| Adresse MAC destination | |
| Adresse IP source | |
| Adresse IP destination | |
| Type ICMP (numéro) | |
| Code ICMP | |

### Question : Différence entre le Type ICMP d'un "Echo Request" et d'un "Echo Reply" ?

```
Votre réponse :


```

> 📸 **Capture d'écran 4** : Capture Wireshark montrant les paquets ICMP avec le détail d'un paquet
> 
> ![Capture 4](captures/capture4_wireshark_icmp.png)

---

## Exercice 5 : Capture et analyse DNS (8 points)

### Analyse de la requête et réponse DNS

| Information | Valeur observée |
|-------------|-----------------|
| Port source (requête) | |
| Port destination (requête) | |
| Protocole de transport | |
| Type de requête DNS | |
| Adresse IP dans la réponse | |

> 📸 **Capture d'écran 5** : Capture Wireshark montrant la requête et réponse DNS
> 
> ![Capture 5](captures/capture5_wireshark_dns.png)

---

## Exercice 6 : Capture et analyse ARP (7 points)

### Tableau d'un échange ARP observé

| Information | ARP Request | ARP Reply |
|-------------|-------------|-----------|
| Adresse MAC source | | |
| Adresse MAC destination | | |
| Adresse IP recherchée | | |

### Question : Pourquoi l'adresse MAC de destination dans l'ARP Request est-elle `ff:ff:ff:ff:ff:ff` ?

```
Votre réponse :


```

> 📸 **Capture d'écran 6** : Capture Wireshark montrant l'échange ARP
> 
> ![Capture 6](captures/capture6_wireshark_arp.png)

---

# Partie 4 : Script de diagnostic réseau (30 points)

## Exercice 7 : Création du script

### Informations sur votre script

**Nom du fichier :** `diagnostic_reseau.sh`

### Checklist des fonctionnalités implémentées

Cochez les fonctionnalités que vous avez implémentées :

- [ ] Affichage du nom de l'hôte
- [ ] Affichage de la date et heure
- [ ] Affichage de la version du système
- [ ] Affichage de l'adresse IP locale
- [ ] Affichage de l'adresse de la passerelle
- [ ] Affichage des serveurs DNS
- [ ] Test de connectivité localhost
- [ ] Test de connectivité passerelle
- [ ] Test de connectivité Internet (8.8.8.8)
- [ ] Test de résolution DNS (google.com)
- [ ] Affichage de la table ARP
- [ ] Résolution DNS de 2+ domaines
- [ ] Gestion des erreurs (messages si échec)
- [ ] Commentaires dans le code
- [ ] Affichage clair avec titres de sections

### Difficultés rencontrées (optionnel)

```
Décrivez ici les difficultés que vous avez rencontrées lors de la création du script :


```

> 📸 **Capture d'écran 7** : Capture montrant l'exécution de votre script
> 
> ![Capture 7](captures/capture7_script_execution.png)

---

# Récapitulatif de la remise

## Fichiers à inclure dans votre projet

Vérifiez que votre projet contient :

- [ ] `reponse.md` (ce fichier complété)
- [ ] `diagnostic_reseau.sh` (votre script)
- [ ] `captures/capture1_config_reseau.png`
- [ ] `captures/capture2_ping.png`
- [ ] `captures/capture3_arp_dns.png`
- [ ] `captures/capture4_wireshark_icmp.png`
- [ ] `captures/capture5_wireshark_dns.png`
- [ ] `captures/capture6_wireshark_arp.png`
- [ ] `captures/capture7_script_execution.png`

---


---

*Bon travail !*