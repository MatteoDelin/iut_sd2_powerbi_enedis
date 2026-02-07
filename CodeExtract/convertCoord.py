# 'dataset' contient vos données d'entrée
import pandas as pd
from pyproj import Transformer

dataset=pd.read_csv("C:/Users/matte/Documents/cartable/U1/Reporting/DPE_powerBI/Donnee_Source/TableDPE.csv",sep=",",decimal=".")
# Définir la transformation : Lambert 93 (2154) vers GPS WGS84 (4326)
transformer = Transformer.from_crs("EPSG:2154", "EPSG:4326")

# Appliquer la conversion (Attention : remplacez 'X' et 'Y' par les noms exacts de vos colonnes)
# Lambert 93 est généralement sous forme X (Est) et Y (Nord)
dataset['coordonnee_cartographique_x_ban'], dataset['coordonnee_cartographique_y_ban'] = transformer.transform(dataset['coordonnee_cartographique_x_ban'].values, dataset['coordonnee_cartographique_y_ban'].values)
dataset['annee_construction'] = dataset['annee_construction'].astype('Int64')

# Retourner le résultat
dataset.to_csv("C:/Users/matte/Documents/cartable/U1/Reporting/DPE_powerBI/Donnee_Source/TableDPE.csv",sep=",",decimal=".",index=False)