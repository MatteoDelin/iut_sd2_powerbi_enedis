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
| `numero_dpe` | String | Identifiant unique du diagnostic |
| `date_etablissement_dpe` | String | Date de réalisation du diagnostic |
| `etiquette_dpe` | String | Classe énergétique du logement (A à G) |
| `type_batiment` | String | Type de bâtiment (Maison ou Appartement) |
| `annee_construction` | Numeric | Année de construction du logement |
| `surface_habitable_logement`| Numeric | Surface habitable en m² |
| `adresse_ban` | String | Adresse issue de la Base Adresse Nationale |
| `type_energie_n1` | String | Type d'énergie principale |
| `conso_chauffage_ef` | Numeric | Consommation chauffage (Énergie Finale) |
| `conso_ecs_ef` | Numeric | Consommation Eau Chaude Sanitaire (EF) |
| `conso_refroidissement\_ef` | Numeric | Consommation refroidissement (EF) |
| `conso_eclairage_ef` | Numeric | Consommation éclairage (EF) |
| `conso_auxiliaires_ef` | Numeric | Consommation auxiliaires (EF) |
| `conso_chauffage_ep` | Numeric | Consommation chauffage (Énergie Primaire) |
| `conso_ecs_ep` | Numeric | Consommation Eau Chaude Sanitaire (EP) |
| `conso_refroidissement_ep` | Numeric | Consommation refroidissement (EP) |
| `conso_eclairage_ep` | Numeric | Consommation éclairage (EP) |
| `conso_auxiliaires_ep` | Numeric | Consommation auxiliaires (EP) |
| `cout_chauffage` | Numeric | Coût annuel estimé pour le chauffage |
| `cout_ecs` | Numeric | Coût annuel estimé pour l'ECS |
| `cout_refroidissement` | Numeric | Coût annuel estimé pour le refroidissement |
| `cout_eclairage` | Numeric | Coût annuel estimé pour l'éclairage |
| `cout_auxiliaires` | Numeric | Coût annuel estimé pour les auxiliaires |
| `coordonnee_cartographique_x_ban` | Numeric | latitude du logement |
| `coordonnee_cartographique_y_ban` | Numeric | longitude x du logement |

---

## Contenu du repository

Conformément au cahier des charges de GreenTech Solutions :

* **Tableau de bord** : `TDB Enedis.pbix` présent dans ce repository.
* **Documentation Technique** : Schéma du modèle, règles RLS et diagnostic de performance.
* **Documentation Fonctionnelle** : Guide utilisateur expliquant les visuels et filtres.
* **Donnee_Source** : dossier contenant le CSV source  du rapport
* **CodeExtract** : dossier contenant les codes ayant permis la récupération des données

---

