# 📊 Projet Power BI : État des Lieux Énergétique (DPE)
## 🏔️ Focus : Alpes-Maritimes (06)

## 📝 À propos du projet
Face à l'accélération du changement climatique et à la hausse des prix de l'énergie, la sobriété énergétique est au cœur des préoccupations des Français. À la demande d'**Enedis**, la société de service **GreenTech Solutions** a établi un état des lieux de la performance énergétique des logements du département des **Alpes-Maritimes**.

**Problématique :** *Quelles axes d'améliorations peut-on mettre en place, à travers l'analyse de la situation énergétique dans le département des Alpes Maritimes ?*

Notre approche se décompose en trois phases :
1. **Synthèse de la consommation :** Étude globale des indicateurs énergétiques du département.
2. **Comparaison Intercommunale :** Observation des disparités entre les diverses villes.
3. **Rapport Décisionnel :** Assemblage des axes d'observations pour répondre à la problématique.

---

## 🛠️ Spécifications Techniques & Données

### Source des données
Les données proviennent de l'API de l'ADEME (Diagnostic de Performance Énergétique v2).
**URL de requête (Département 06) :** `https://data.ademe.fr/data-fair/api/v1/datasets/dpe03existant/lines?code_departement_ban_eq=06&select=numero_dpe%2Cdate_etablissement_dpe%2Cetiquette_dpe%2Ctype_batiment%2Cannee_construction%2Csurface_habitable_logement%2Cadresse_ban%2Cconso_chauffage_ep%2Cconso_ecs_ep%2Cconso_refroidissement_ep%2Cconso_eclairage_ep%2Cconso_auxiliaires_ep%2Cconso_chauffage_ef%2Cconso_ecs_ef%2Cconso_refroidissement_ef%2Cconso_eclairage_ef%2Cconso_auxiliaires_ef%2Ccout_chauffage%2Ccout_ecs%2Ccout_refroidissement%2Ccout_eclairage%2Ccout_auxiliaires`

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
| `conso_refroidissement_ef` | Numeric | Consommation refroidissement (EF) |
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

---

## 📂 Livrables du Projet
Conformément au cahier des charges de GreenTech Solutions :
* **Application Power BI** : Déployée sur Power BI Online.
* **Fichier Source** : `powerbi.pbix` présent dans ce repository.
* **Documentation Technique** : Schéma du modèle, règles RLS et diagnostic de performance (2 pages max).
* **Documentation Fonctionnelle** : Guide utilisateur expliquant les visuels et filtres (2 pages max).
* **Captation Vidéo** : Démo de l'application publiée en privé sur YouTube.

---

## 👥 Équipe et Rôles
Projet réalisé en équipe SD2. Chaque étudiant a assuré les trois rôles durant le cycle de développement :
* **Chef de projet** : Planification et coordination.
* **UX/UI** : Conception de la maquette (Figma/Canva) et interface utilisateur.
* **Data Analyst** : Nettoyage (Power Query), modélisation et mesures DAX.

**Client :** Mathieu Gaultier  
**Date limite de rendu :** 08/02/2026
