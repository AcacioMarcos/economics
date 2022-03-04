## Calculos de microeconomia

# Instalando os pacotes

install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggpubr")

# Carregando as bibliotecas

library("dplyr")
library("ggplot2")
library("ggpubr")

# Função para elasticidade da curva da demanda

elasticidade.demanda <- function(q_antigo, q_novo, p_antigo, p_novo){
  ED <- ((q_novo - q_antigo)/(q_novo + q_antigo)/2)/((p_novo - p_antigo)/(p_novo + p_antigo)/2)
  
  return(ED)
}

# Função para elasticidade da curva da oferta

elasticidade.oferta <- function(q_antigo, q_novo, p_antigo, p_novo){
  EO <- ((q_novo - q_antigo)/(q_novo + q_antigo)/2)/((p_novo - p_antigo)/(p_novo + p_antigo)/2)
  
  return(EO)
}

#Teste demanda

q_novo = 90

q_antigo = 100

p_novo = 20

p_antigo = 10

elasticidade.demanda(q_antigo, q_novo, p_antigo, p_novo)

#Teste oferta

q_novo = 110

q_antigo = 100

p_novo = 10

p_antigo = 20

elasticidade.oferta(q_antigo, q_novo, p_antigo, p_novo)


