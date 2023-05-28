install.packages("usethis")
#enviar para o github


memory.limit(24576)
#ESCOLAS 2009#
enem2009 <- data.table::fread(input='RJENEM2009.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2009
escolas2009 <- subset(bd,bd$CO_ESCOLA == 33062706
                       | bd$CO_ESCOLA == 33065250
                       | bd$CO_ESCOLA == 33068488
                       | bd$CO_ESCOLA == 33067643)
write.table(escolas2009, file = "escolas2009.csv", row.names = FALSE,
            sep = ";", dec = ",")
barplot(table(escolas2009$Q3))

#ESCOLAS 2010
enem2010 <- data.table::fread(input='RJENEM2010.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2010
escolas2010 <- subset(bd,bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2010, file = "escolas2010.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2011#
enem2011 <- data.table::fread(input='RJENEM2011.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2011
escolas2011 <- subset(bd,bd$PK_COD_ENTIDADE == 33062706
                      | bd$PK_COD_ENTIDADE == 33065250
                      | bd$PK_COD_ENTIDADE == 33068488
                      | bd$PK_COD_ENTIDADE == 33067643)
write.table(escolas2011, file = "escolas2011.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2012#
enem2012 <- data.table::fread(input='RJENEM2012.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2012
escolas2012 <- subset(bd,bd$PK_COD_ENTIDADE == 33062706
                      | bd$PK_COD_ENTIDADE == 33065250
                      | bd$PK_COD_ENTIDADE == 33068488
                      | bd$PK_COD_ENTIDADE == 33067643)
write.table(escolas2012, file = "escolas2012.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2013#
enem2013 <- data.table::fread(input='RJENEM2013.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2013
escolas2013 <- subset(bd, bd$COD_ESCOLA == 33062706
                      | bd$COD_ESCOLA == 33065250
                      | bd$COD_ESCOLA == 33068488
                      | bd$COD_ESCOLA == 33067643)
write.table(escolas2013, file = "escolas2013.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2014#
enem2014 <- data.table::fread(input='RJENEM2014.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2014
escolas2014 <- subset(bd, bd$COD_ESCOLA == 33062706
                      | bd$COD_ESCOLA == 33065250
                      | bd$COD_ESCOLA == 33068488
                      | bd$COD_ESCOLA == 33067643)
write.table(escolas2014, file = "escolas2014.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2015#
enem2015 <- data.table::fread(input='RJENEM2015.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2015
escolas2015 <- subset(bd, bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2015, file = "escolas2015.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2016#
enem2016 <- data.table::fread(input='RJENEM2016.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2016
escolas2016 <- subset(bd, bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2016, file = "escolas2016.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2017#
enem2017 <- data.table::fread(input='RJENEM2017.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2017
escolas2017 <- subset(bd, bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2017, file = "escolas2017.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2018#
enem2018 <- data.table::fread(input='RJENEM2018.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2018
escolas2018 <- subset(bd, bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2018, file = "escolas2018.csv", row.names = FALSE,
            sep = ";", dec = ",")

#ESCOLAS 2019#
enem2019 <- data.table::fread(input='RJENEM2019.csv',
                              integer64='character',
                              skip=0,  #Ler do inicio
                              nrow=-1, #Ler todos os registros
                              na.strings = "", 
                              showProgress = TRUE)
bd <- enem2019
escolas2019 <- subset(bd, bd$CO_ESCOLA == 33062706
                      | bd$CO_ESCOLA == 33065250
                      | bd$CO_ESCOLA == 33068488
                      | bd$CO_ESCOLA == 33067643)
write.table(escolas2019, file = "escolas2019.csv", row.names = FALSE,
            sep = ";", dec = ",")
