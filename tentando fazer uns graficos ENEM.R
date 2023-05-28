if(!require(pacman)) install.packages("pacman")
library(pacman)
library(tidyverse)
library(ggplot2)
library(gapminder)
library(ggthemes)
library(egg)
library(dplyr)
library(haven)
install.packages("forcats")
pacman::p_load(dplyr, ggplot2)
dados <- FederaisEnem2009_2019_2_
glimpse(dados)

#Conferir se
#existe relação linear entre a variável dependente e a 
#variável independente
## VD (o que você quer prever): Notas
## VI (o que você acredita que tem influência no que
##      quer prever): Cor/raça
dados$Escolas [dados$Escolas  == 33067643] <- "CPII - Campus Centro"
dados$Escolas [dados$Escolas  == 33062706] <- "CPII - Campus Centro"
dados$Escolas [dados$Escolas  == 33068488] <- "CPII - Campus Centro"
dados$Escolas [dados$Escolas  == 33065250] <- "CPII - Campus Centro"
dados$TP_COR_RACA [dados$TP_COR_RACA  == 0] <- "Não Declarado"
dados$TP_COR_RACA [dados$TP_COR_RACA  == 1] <- "Branca"
dados$TP_COR_RACA [dados$TP_COR_RACA  == 2] <- "Preta"
dados$TP_COR_RACA [dados$TP_COR_RACA  == 3] <- "Parda"
dados$TP_COR_RACA [dados$TP_COR_RACA  == 4] <- "Amarela"
dados$TP_COR_RACA [dados$TP_COR_RACA  == "Ind韌ena"] <- "Indígena"
dados$TP_COR_RACA [dados$TP_COR_RACA  == "." | dados$TP_COR_RACA  == "*"  ] <- "NA"
dados$TP_COR_RACA [dados$TP_COR_RACA  == "NA"] <- "Não Declarado"


dados %>%
  filter(NU_ANO %in% c(2009, 2010, 2011, 2012)) %>% 
  ggplot(aes(x = Escolas))+
  geom_bar()

#grafico de barras
dados %>%
  filter(NU_ANO %in% c(2009:2012)
  ) %>% 
  group_by(TP_COR_RACA) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(x = TP_COR_RACA, y = contagem, label = contagem))+
  geom_bar(stat = "identity", fill = "red", color = "blue")+
  geom_label()+
  coord_flip()
  
# rotulos
dados %>%
  filter(NU_ANO %in% c(2009:2012)
  ) %>% 
  group_by(TP_COR_RACA) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(x = TP_COR_RACA, y = contagem, label = contagem))+
  geom_bar(stat = "identity")+
  geom_label(size = 3, alpha = 0.5)+
  coord_flip()

#agregar dois fatores 2009 - 2012
dados %>% 
  filter(NU_ANO %in% c(2009:2019)
  ) %>%
  group_by(TP_COR_RACA, Escolas, NU_ANO) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(TP_COR_RACA, y = contagem, fill = Escolas))+
  geom_bar(stat = "identity")+
  labs(
    title = "Distrubuição racial no ENEM 2009 - 2012",
    x = " ",
    y = "Número de participantes",
    caption = "Fonte: Microdados ENEM -INEP",
    )+
    theme_bw()+
    facet_grid(~NU_ANO)


grafico + scale_color_discrete(name = "Escolas Selecionadas")

#agregar dois fatores 2013 - 2016
dados <- na.omit(dados)
dados %>% 
  filter(NU_ANO %in% c(2013:2016)
  ) %>%
  group_by(TP_COR_RACA, Escolas) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(TP_COR_RACA, y = contagem, fill = Escolas))+
  geom_bar(stat = "identity")+
  coord_flip()+
  labs(
    title = "Distrubuição racial no ENEM 2013 - 2016",
    x = " ",
    y = "Número de participantes",
    caption = "Fonte: Microdados ENEM -INEP",
  )+
  theme_bw()

grafico + scale_color_discrete(name = "Escolas Selecionadas")

#agregar dois fatores 2017 - 2019
dados <- na.omit(dados)
dados %>% 
  group_by(TP_COR_RACA, Escolas) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(x =TP_COR_RACA, y = contagem, fill = Escolas))+
  geom_bar(stat = "identity")+
  coord_flip()+
  labs(
    title = "Distrubuição racial total no ENEM - 2009 a 2019",
    x = " ",
    y = "Número de participantes",
    caption = "Fonte: Microdados ENEM - INEP",
  )+
  theme_bw()

grafico + scale_color_discrete(name = "Escolas Selecionadas")

#histograma de notas Redação, matemática e linguagens. 
#Separado em 3 anos e três áreas MT, LC e RED.
#2009 - 2012
#2013 - 2015
#2016 - 2019
dados %>% 
  filter(NU_ANO %in% c(2016 : 2019)
  ) %>%
  ggplot(aes(x = NU_NOTA_MT, fill = TP_COR_RACA))+
  geom_histogram()+
  labs(
    title = "Notas em Matemática - 2016 a 2019",
    x = "Notas",
    y = "Participantes",
    caption = "Fonte: Microdados ENEM - INEP")+
  theme_bw()+
  scale_fill_manual(values = c("#335C67","#FFF3B0","#E09F3E","#9E2A2B","#540B0E","#6d6875"))
  facet_grid(~NU_ANO)

dados %>% 
  filter(NU_ANO %in% c(2009 : 2019)
  ) %>%
  ggplot(aes(x = , fill = TP_COR_RACA))+
  geom_histogram()+
  labs(
    title = "Notas em Linguagens e Códigos - 2016 a 2019",
    x = "Notas",
    y = "Participantes",
    caption = "Fonte: Microdados ENEM - INEP")+
  theme_bw()+
  scale_fill_manual(values = c("#335C67","#FFF3B0","#E09F3E","#9E2A2B","#540B0E","#6d6875"))+
  facet_grid(~NU_ANO)

 #Distribuição racial
dados %>% 
  filter(NU_ANO %in% c(2009, 2013, 2019)
  ) %>%
  group_by(TP_COR_RACA, Escolas, NU_ANO) %>% 
  summarise(
    contagem = n()
  ) %>% 
  ggplot(aes(x= fct_infreq (TP_COR_RACA), y = contagem, fill = Escolas))+
  geom_bar(stat = "identity")+
  labs(
    title = "Distrubuição racial no ENEM 2009, 2013 e 2019",
    x = " ",
    y = "Número de participantes",
    caption = "Fonte: Microdados ENEM - INEP",
  )+
  theme_bw()+
  facet_grid(~NU_ANO)

#outro grafico
  ggplot(data = dados)+
    geom_line(aes(x = NU_ANO, group = 1), stat = "count")
