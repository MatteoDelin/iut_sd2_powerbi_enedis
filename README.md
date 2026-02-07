# Projet Power BI : État des Lieux Énergétique (DPE)

## Focus : Alpes-Maritimes (06)

## À propos du projet

Face à l'accélération du changement climatique et à la hausse des prix de l'énergie, la sobriété énergétique est au cœur des préoccupations des Français. À la demande d'**Enedis**, la société de service **GreenTech Solutions** a établi un état des lieux de la performance énergétique des logements du département des **Alpes-Maritimes**.

**Problématique :** *Quelles axes d'améliorations peut-on mettre en place, à travers l'analyse de la situation énergétique dans le département des Alpes Maritimes ?*

Notre approche se décompose en trois phases :

1. **Synthèse de la consommation :** Étude globale des indicateurs énergétiques du département.
2. **Comparaison Intercommunale :** Observation des disparités entre les diverses villes.
3. **Analyse poussée :** Etude des indicateur plus en profondeur pour chaque DPE afin de trouvé les cause de disparité.



**Lien vidéo YouTube** : \_\_\_\_

**Lien du Tableau de bord en ligne** : \_\_\_\_



---

## Spécifications Techniques \& Données

### Source des données

Les données proviennent de l'API de l'ADEME (Diagnostic de Performance Énergétique).

* DPE existant : https://data.ademe.fr/datasets/dpe03existant
* DPE neuf : https://data.ademe.fr/datasets/dpe02neuf

---

### Dictionnaire des colonnes utilisées

| Colonne | Type | Description |
| :--- | :--- | :--- |
| `numero\_dpe` | String | Identifiant unique du diagnostic |
| `date\_etablissement\_dpe` | String | Date de réalisation du diagnostic |
| `etiquette\_dpe` | String | Classe énergétique du logement (A à G) |
| `type\_batiment` | String | Type de bâtiment (Maison ou Appartement) |
| `annee\_construction` | Numeric | Année de construction du logement |
| `surface\_habitable\_logement`| Numeric | Surface habitable en m² |
| `adresse\_ban` | String | Adresse issue de la Base Adresse Nationale |
| `type\_energie\_n1` | String | Type d'énergie principale |
| `conso\_chauffage\_ef` | Numeric | Consommation chauffage (Énergie Finale) |
| `conso\_ecs\_ef` | Numeric | Consommation Eau Chaude Sanitaire (EF) |
| `conso\_refroidissement\_ef` | Numeric | Consommation refroidissement (EF) |
| `conso\_eclairage\_ef` | Numeric | Consommation éclairage (EF) |
| `conso\_auxiliaires\_ef` | Numeric | Consommation auxiliaires (EF) |
| `conso\_chauffage\_ep` | Numeric | Consommation chauffage (Énergie Primaire) |
| `conso\_ecs\_ep` | Numeric | Consommation Eau Chaude Sanitaire (EP) |
| `conso\_refroidissement\_ep` | Numeric | Consommation refroidissement (EP) |
| `conso\_eclairage\_ep` | Numeric | Consommation éclairage (EP) |
| `conso\_auxiliaires\_ep` | Numeric | Consommation auxiliaires (EP) |
| `cout\_chauffage` | Numeric | Coût annuel estimé pour le chauffage |
| `cout\_ecs` | Numeric | Coût annuel estimé pour l'ECS |
| `cout\_refroidissement` | Numeric | Coût annuel estimé pour le refroidissement |
| `cout\_eclairage` | Numeric | Coût annuel estimé pour l'éclairage |
| `cout\_auxiliaires` | Numeric | Coût annuel estimé pour les auxiliaires |
| `coordonnee\_cartographique\_x\_ban` | Numeric | latitude du logement |
| `coordonnee\_cartographique\_y\_ban` | Numeric | longitude x du logement |

---

## Livrables du Projet

Conformément au cahier des charges de GreenTech Solutions :

* **Application Power BI** : Déployée sur Power BI Online.
* **Fichier Source** : `TDB Enedis.pbix` présent dans ce repository.
* **Documentation Technique** : Schéma du modèle, règles RLS et diagnostic de performance.
* **Documentation Fonctionnelle** : Guide utilisateur expliquant les visuels et filtres.
* **Captation Vidéo** : Démo de l'application publiée en non répertorier sur YouTube.

---

