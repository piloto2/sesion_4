library(readxl)
library(tidyverse)
library(caret)
library(openxlsx)


nac2017 <- read_excel("C:/Users/Trabajo/OneDrive - Instituto Nacional de Estadisticas/PE SSCC/Capacitacion R/sesion_3/data/nac_2017.xlsx")
  
nac2017_j1 <- nac2017 %>% 
  select(id, nacion, sexo, peso, talla)

nac2017_j2 <- nac2017 %>% 
  select(id, dia_nac, mes_nac, ano_nac, dia_ins, mes_ins, ano_ins)

random <- as.vector(createDataPartition(nac2017$id, p = .7, list = FALSE))

nac2017_j3 = nac2017_j2[-random,]
nac2017_j2 = nac2017_j2[random,]


# bind <- bind_rows(data1 = nac2017_j2, data2 = nac2017_j3, .id= "df_origen")
# 
# x <- nac2017_j1 %>% left_join(bind %>% select(id, dia_nac, mes_nac), by = "id")
# 
# 
# x <- nac2017_j1 %>% left_join(nac2017_j2, by = "id")
# 
# y <- nac2017_j1 %>% inner_join(nac2017_j2, by = "id")
# 
# z <- nac2017_j1 %>% semi_join(nac2017_j2, by = "id")
# 
# w <- nac2017_j1 %>% anti_join(nac2017_j2, by = "id")
# 
# write.xlsx(nac2017_j1, file = "C:/Users/Trabajo/OneDrive - Instituto Nacional de Estadisticas/PE SSCC/Capacitacion R/sesion_3/data/tarea/nac2017_j1.xlsx")
# write.xlsx(nac2017_j2, file = "C:/Users/Trabajo/OneDrive - Instituto Nacional de Estadisticas/PE SSCC/Capacitacion R/sesion_3/data/tarea/nac2017_j2.xlsx")
# write.xlsx(nac2017_j3, file = "C:/Users/Trabajo/OneDrive - Instituto Nacional de Estadisticas/PE SSCC/Capacitacion R/sesion_3/data/tarea/nac2017_j3.xlsx")


