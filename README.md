# DPE_powerBI

On travaille sur les Alpes Maritimes

penser à mettre Mea Culpa

colonnes :
* numero_dpe String
* date_etablissement_dpe String
* etiquette_dpe String
* type_batiment String
* annee_construction Numeric
* surface_habitable_logement Numeric
* adresse_ban String
* type_energie_n1 String
* conso_chauffage_ef Numeric
* conso_ecs_ef Numeric
* conso_refroidissement_ef Numeric
* conso_eclairage_ef Numeric
* conso_auxiliaires_ef Numeric
* conso_chauffage_ep Numeric
* conso_ecs_ep Numeric
* conso_refroidissement_ep Numeric
* conso_eclairage_ep Numeric
* conso_auxiliaires_ep Numeric
* cout_chauffage Numeric
* cout_ecs Numeric
* cout_refroidissement Numeric
* cout_eclairage Numeric
* cout_auxiliaires Numeric

url de requête :
https://data.ademe.fr/data-fair/api/v1/datasets/dpe03existant/lines?code_departement_ban_eq=06&select=numero_dpe%2Cdate_etablissement_dpe%2Cetiquette_dpe%2Ctype_batiment%2Cannee_construction%2Csurface_habitable_logement%2Cadresse_ban%2Cconso_chauffage_ep%2Cconso_ecs_ep%2Cconso_refroidissement_ep%2Cconso_eclairage_ep%2Cconso_auxiliaires_ep%2Cconso_chauffage_ef%2Cconso_ecs_ef%2Cconso_refroidissement_ef%2Cconso_eclairage_ef%2Cconso_auxiliaires_ef%2Ccout_chauffage%2Ccout_ecs%2Ccout_refroidissement%2Ccout_eclairage%2Ccout_auxiliaires

## A propos de ce projet

Quelles axes d'améliorations peut t-on mettre en place, à travers l'analyse de la situation énergétique dans le département des Alpes Maritimes ?

Tous d'abord, nous allons étudier la synthèse de la consommation énergétique, puis nous observerons la comparaison entre les diverses villes dans le département, enfin nous présenterons nos résultats à travers un rapport qui assemblera nos divers axes d'observations afin de répondre à cette problématique.
