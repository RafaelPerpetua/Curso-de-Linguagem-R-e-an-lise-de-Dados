#Operadores Comparativos:
#Tem a função de testar condições:

# < , > , == , != , <= , >=

3 > 2 # 3 é maior que 2? 
3 < 2 #3 é menor que 2? 
3 == 2 #3 é igual a 2? 
3 == 3 #3 é igual a 3 ? 
3 >= 2 #3 é maior ou igual a 2? 
3 <= 2 #3 é menor ou igual a 2? 

#Podemos utilizar com variáveis?
x = 10
y = 8

x > y
x <= y
x == y

#Utilizando os Operadores lógicos, temos: 
# | -> ou (avaliando uma a uma) 
# & -> e  (avaliando uma a uma)
# || -> ou(avaliando apenas o primeiro elemento)
# && -> e (avaliando apenas o primeiro elemento)
#reutilizando as variáveis, vamos acrescentar z

x<- 10
y<- 8
z<- 5

x > y #x é maior que y? TRUE

x > y & y > z #x é maior que y e y é maior que z? TRUE

x > y | y > z #x é maior que y ou y e´maior que z? TRUE

x < y & y > z #x é menor que y e y é maior que z? False

x < y | y > z # x é menor que y ou y é maior que z? True


#PARTE 2: 
#Criando nosso vetor de notas

notas_meninas<- c(5, 6 ,7.5 ,8, 9)
notas_meninas

notas_meninos<- c(4, 6 ,3.5, 8.2 , 10)
notas_meninos

notas_totais<- c(notas_meninas, notas_meninos)
notas_totais[5] #Encontrando a posição 5 no vetor notas_totais

#Criando uma sequência de números pares
x<- seq(from=2, to = 100, by =2 )
x

#Utilizando a função rep() para criar listas 
y<- rep(1,5)
y

z<-rep(c(1,2),10) #Repetindo o (1 e 2) 10 vezes. 
z

w<-c(rep(0,10),rep(1,5)) # repetir o 0, 10 vezes e o 1, 5 vezes
w

k<- paste("tr",1:5,sep="") #Repetindo o tr 5 vezes com separador ""
k

#PARTE 3:
#Criando nossas primeiras matrizes: 

x<-matrix(c(1,1,1,2,2,2,3,3,3),3,3)
x

y<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),4,3) 
y

y[1,]<-c(0,0,0)
y

