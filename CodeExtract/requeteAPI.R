library(httr)
library(jsonlite)
library(dplyr)
library(lubridate)
library(tibble)

refresh_api <- function(date_derniere_maj) {
  
  # ---------------- Paramètres ----------------
  code_departement <- c("06")
  
  ls_base_url <- c(
    "https://data.ademe.fr/data-fair/api/v1/datasets/dpe03existant/lines",
    "https://data.ademe.fr/data-fair/api/v1/datasets/dpe02neuf/lines"
  )
  
  type_dpe <- c("existant", "neuf")
  
  select_fields <- "
    numero_dpe,
    date_etablissement_dpe,
    etiquette_dpe,
    type_batiment,
    annee_construction,
    surface_habitable_logement,
    adresse_ban,
    type_energie_n1,
    conso_chauffage_ef,
    conso_ecs_ef,
    conso_refroidissement_ef,
    conso_eclairage_ef,
    conso_auxiliaires_ef,
    conso_chauffage_ep,
    conso_ecs_ep,
    conso_refroidissement_ep,
    conso_eclairage_ep,
    conso_auxiliaires_ep,
    cout_chauffage,
    cout_ecs,
    cout_refroidissement,
    cout_eclairage,
    cout_auxiliaires,
    coordonnee_cartographique_x_ban,
    coordonnee_cartographique_y_ban
  "
  
  # Nettoyage pour l’URL
  select_fields <- gsub("\\s+", "", select_fields)
  
  MAX_SIZE <- 10000
  date_fin <- as.Date("2025-10-31")
  
  # ---------------- DataFrame initial ----------------
  df <- tibble(
    numero_dpe = character(),
    date_etablissement_dpe = as.Date(character()),
    etiquette_dpe = character(),
    type_batiment = character(),
    annee_construction = integer(),
    surface_habitable_logement = numeric(),
    adresse_ban = character(),
    type_energie_n1 = character(),
    
    conso_chauffage_ef = numeric(),
    conso_ecs_ef = numeric(),
    conso_refroidissement_ef = numeric(),
    conso_eclairage_ef = numeric(),
    conso_auxiliaires_ef = numeric(),
    
    conso_chauffage_ep = numeric(),
    conso_ecs_ep = numeric(),
    conso_refroidissement_ep = numeric(),
    conso_eclairage_ep = numeric(),
    conso_auxiliaires_ep = numeric(),
    
    cout_chauffage = numeric(),
    cout_ecs = numeric(),
    cout_refroidissement = numeric(),
    cout_eclairage = numeric(),
    cout_auxiliaires = numeric(),
    
    coordonnee_cartographique_x_ban = numeric(),
    coordonnee_cartographique_y_ban = numeric(),
    
    type_dpe = character()
  )
  
  # ---------------- Boucles ----------------
  for (i in seq_along(ls_base_url)) {
    base_url <- ls_base_url[i]
    
    for (code_dep in code_departement) {
      
      date_debut <- as.Date(date_derniere_maj)
      
      while (date_debut < date_fin) {
        
        date_fin_mois <- date_debut %m+% months(1)
        
        query_string <- paste0(
          "code_departement_ban:", code_dep,
          " AND date_etablissement_dpe:[",
          date_debut, " TO ", date_fin_mois - days(1), "]"
        )
        
        params <- list(
          size = MAX_SIZE,
          select = select_fields,
          qs = query_string
        )
        
        response <- GET(modify_url(base_url, query = params))
        stop_for_status(response)
        
        temp_data <- fromJSON(rawToChar(response$content), flatten = TRUE)
        temp_df <- temp_data$result
        
        nb_rows <- ifelse(is.null(nrow(temp_df)), 0, nrow(temp_df))
        message(
          type_dpe[i], " | ",
          format(date_debut), " → ",
          format(date_fin_mois - days(1)),
          " : ", nb_rows, " lignes"
        )
        
        if (!is.null(nrow(temp_df)) && nrow(temp_df) > 0) {
          temp_df$type_dpe <- type_dpe[i]
          temp_df <- temp_df %>%
            mutate(
              date_etablissement_dpe = as.Date(date_etablissement_dpe),
              annee_construction = as.integer(annee_construction),
              surface_habitable_logement = as.numeric(surface_habitable_logement)
            )
          df <- bind_rows(df, temp_df)
        }
        
        date_debut <- date_fin_mois
        Sys.sleep(0.1)
      }
    }
  }
  
  df <- df %>% select(-any_of("_score"))
  return(df)
}

# ---------------- Exécution ----------------
df <- refresh_api("2021-07-01")

write.csv(df, "TableDPE.csv", row.names = FALSE)
