#Seção 5

#Criando nossas primeiras funções:

#Exemplo 1:

funcao_soma<- function(x,y){
  soma<- x+y
  return(soma)
}

#Vamos chamar a função para realizar uma soma:
funcao_soma(20,45)
funcao_soma(2,4)

#Testando para variáveis com valores:
a<- 400
b<- 500
funcao_soma(a,b)

#Atribuindo resultado da função soma a variável
resultado<- funcao_soma(a,b)
resultado

#Exemplo 2:
funcao_paridade<- function(a){
  if (a ==0){
    print(paste("Seu Número é o zero, elemento neutro"))
  }else if(a%%2==0){
    print(paste("Seu Número", a, "é par"))
  }else{
    print(paste("Seu Número", a, "é impar"))
    
  }
}
funcao_paridade(10)
funcao_paridade(2)
funcao_paridade(3)
funcao_paridade(0)

#Exemplo 3:
funcao_saudacao<- function(nome){
  print(paste('Seja muito bem vindo,',nome))
}
funcao_saudacao(Gustavo) #Se você tentar utilizar o comando assim , não dará certo
#pois gustavo é uma string, e strings devem vir entre aspas
funcao_saudacao('Gustavo')

#-------------------------------//--------------------------------------------
#Gráficos na Linguagem R:

#Gráfico de dispersão e linha

#Exemplo 1 - gráfico simples com vetores
meses <- c(1,2,3,4,5,6)
vendas<-c(200,130,450,100,300,97)

plot(meses,vendas)  #Gráfico do tipo dispersão
plot(meses,vendas,type = "l")  #Gráfico do tipo linha
plot(meses,vendas,type = "o")  #Gráfico do tipo dispersão + linha

#Exemplo 2 - Gráfico com os mesmos vetores: 
meses <- c(1, 2, 3, 4, 5, 6)
vendas <- c(200, 130, 450, 100, 300, 97)

plot(meses,vendas,
  type = 'o',   
  main = 'Vendas por mês',
  col = 'black',
  xlab = 'Meses',
  ylab = 'Vendas',
  pch = 19,
  cex = 1.4,
  lwd = 3)

legend("topright",
       legend = 'Vendas por mês',
       col = 'black',
       lty = 1,
       pch = 19)

#Exemplo 3 - Utilizando 2 gráficos
meses = c(1:6)
loja_1 = c(100,150,46,78,90,112)
loja_2 = c(150,67,80,90,112,114)
plot(meses, loja_1,
     type = "o",
     col = "blue",
     pch = 19,
     lwd = 2,
     main = "Comparação de vendas",
     xlab = "Meses",
     ylab = "Vendas")

lines(meses, loja_2,
      type = "o",
      col = "red",
      pch = 19,
      lwd = 2)

legend("topright",
       legend = c("Venda 1", "Venda 2"),
       col = c("blue", "red"),
       lty = 1,
       pch = 19)

#Gráfico de Barra e linha
loja_1 = c(100,150,46,78,90,112)

pie(loja_1,
    labels = paste("Mês", meses),
    main = "Distribuição das vendas") #Mostra o gráfico de barra, onde utiliza-se %, quando maior a quantidade, maior o tamanho da fatia

barplot(loja_1, 
        main = "Vendas por mês",
        xlab = "Meses",
        ylab = "Vendas",
        col = "steelblue",
        border = "black",
        names.arg = meses) #names.arg - nomes embaixo das barras

