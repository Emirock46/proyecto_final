#Código para ver regiones conservadas de proteínas

#Primer paso: Instalar paquetes necesarios 
if (!requireNamespace("Biostrings", quietly = TRUE)) {
  install.packages("BiocManager")
  BiocManager::install("Biostrings")
}

library(Biostrings)

#Segundo paso: Hacer funcion para leer secuencia de DNA (Esto es de forma manual)
leer_secuencia_manual <- function(secuencia_manual) {
  if (!is.null(secuencia_manual)) {
    secuencia <- DNAString(secuencia_manual)
    return(secuencia)
  } else {
    stop("Debes proporcionar una secuencia manual.")
  }
}

#Tercer paso: Realizamos una traduccion a la secuencia de DNA a proteina 

mi_secuencia_proteinas<-translate(mi_secuencia)
print(mi_secuencia_proteinas)
