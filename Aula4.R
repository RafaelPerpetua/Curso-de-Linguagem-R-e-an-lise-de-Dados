#Seção 4 - Dataframe
#Parte 1 - Definições

#Exemplo inicial
p<- data.frame(números = c(10,20,30),letra=c('a','b','c'))
p

#Exemplo 2
dataframe<-data.frame( 
        Nome = c('Luiza','Laura','Maria','Juliana','Caio','Henrique','Paulo','Julio','Rafael','Welington'),
        Idade = c(10,12,15,17,22,34,15,11,17,13) ,               
        Turma = c('1A','2B','3A','1A','2B','3A','1A','2B','3A','2B')
                       ) 
dataframe

#Acessando as informações do dataframe: 

dataframe[1,1] #Linha 1, coluna 1
dataframe[1,2] #Linha 1, coluna 2

#podemos buscar as informações de 1 linha qualquer:

dataframe[1,]
dataframe[7,]

#Uma outra função($) de filtragem interessante:

dataframe$Idade # Podemos extrair todo o vetor Idade

dataframe[dataframe$Idade>15,] #podemos filtrar igual aos vetores. Colocamos a condição e depois ,

dataframe[dataframe$Turma == '1A',]#Filtramos todos os alunos que fazem parte da turma 1A


#Utilizando a função subset()
subset(dataframe,Idade>15)
subset(dataframe,Nome =='Luiza')

#Criando dataframes menores:
novo_dataframe<- dataframe[dataframe$Idade==17,] #idade igual a 17
novo_dataframe

novo_dataframe_2<- subset(dataframe,Idade==17)
novo_dataframe_2

#Adicionando e removendo linhas e colunas:
#para adicionar uma coluna:
dataframe$lingua_estrangeira <- c('Inglês','Espanhol','Francês','Inglês','Espanhol'
                                  ,'Francês','Inglês','Inglês','Inglês','Inglês')
dataframe

dataframe$vazio<- rep(0,10)#criamos uma lista repetindo 0 10 vezes
dataframe
#para adicionar um linha:
nova_linha<- c('Carlos',10,'1B','Espanhol',0)
rbind(dataframe,nova_linha) 

#removendo a coluna vazio:
dataframe$vazio<- NULL
dataframe

#Removendo linha
# Remover pela posição (exclui a linha 2)
dataframe <- dataframe[-2, ]
dataframe
# Remover por condição (exclui a linha onde o Nome é "Bruno")
dataframe<- subset(dataframe,'Nome'!='Laura')

#PARTE 2 - APLICAÇÕES
#Exercício 1:

funcionarios <- data.frame(
  Nome = c("Ana", "Bruno", "Carlos", "Daniela", "Eduardo"),
  Salario = c(2500, 3200, 2800, 4100, 3600)
)
funcionarios$Salario <-(funcionarios$Salario + (funcionarios$Salario*0.8)) 
funcionarios

#Exercício 2: 
alunos <- data.frame(
  Nome = c("Lucas", "Marina", "Pedro", "Juliana", "Rafael"),
  Nota = c(8.5, 6.2, 9.0, 7.4, 5.8)
)
maior_nota = max(alunos$Nota)
maior_nota
melhor_aluno <- subset(alunos,Nota==9.0)
melhor_aluno

#Exercício 3: 
produtos <- data.frame(
  Produto = c("Notebook", "Mouse", "Monitor", "Teclado", "Headset"),
  Estoque = c(5, 0, 8, 12, 0)
)

produtos <- subset(produtos,Estoque!= 0)
produtos

#Exercício 4:
vendas <- data.frame(
  Produto = c("A", "B", "C", "D"),
  Quantidade = c(15, 8, 22, 10),
  Preco = c(18, 35, 12, 40)
)
faturamento<- vendas$Preco * vendas$Quantidade
faturamento

vendas$Faturamento <- c(faturamento)
vendas

#Exercício 5:
carros <- data.frame(
  Modelo = c("A", "B", "C", "D"),
  Ano = c(2018, 2020, 2017, 2022),
  Cor = c("Preto", "Branco", "Prata", "Vermelho"),
  Preco = c(45000, 62000, 39000, 78000)
)

carros$Cor<- NULL
carros
media<- mean(carros$Preco)
media

#---------------------------------------//-------------------------------------
#Parte 3 - Importando planilhas para o R
#Código para importa após set directory:

planilha<-read.csv('turma_notas.csv') 
planilha

#Código para exportar a planilha após alterações:
write.csv(planilha,'Nova_planilha.csv')
