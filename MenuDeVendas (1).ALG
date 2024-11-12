Algoritmo "semnome"

Var
   opcaoMenu : inteiro
   opcaoAluguel : inteiro
   opcaoVenda : inteiro
   carroVenda : inteiro
   carroAluguel : inteiro
   nome : caractere
   cpf : inteiro

Inicio

procedimento MenuPrincipal()
inicio
   escreval("===================================")
   escreval("         MENU PRINCIPAL")
   escreval("===================================")
   escreval("1 - Vendas")
   escreval("2 - Alugueis")
   escreval("3 - Fale Conosco")
   escreval("4 - Duvidas Frequentes")
   escreval("5 - Quem somos")
   escreval("6 - Sair")
   escreval("===================================")
   escreva("Escolha uma opção| ")
   leia(opcaoMenu)
fimprocedimento

procedimento vendas()
inicio
   escreval("-----------------------------------")
   escreval(" Veiculos Disponiveis Para Venda")
   escreval("-----------------------------------")
   escreval("1. BMW X6")
   escreval("2. Mercedez G63")
   escreval("3. Porshce 911")
   escreval("-----------------------------------")
   escreval(" Gostaria de comprar? ")
   escreval(" 1 - Sim")
   escreval(" 2 - Não")
   leia(opcaoVenda)

   escolha opcaoVenda
      caso 1
         escreval("-----------------------------------")
         escreval("Qual opção gostaria de comprar?")
         escreval("-----------------------------------")
         escreval("1 - BMW X6 | R$ 950.00")
         escreval("2 - Mercedez G 63 | R$ 1.869.900")
         escreval("3 - Porsche 911 | R$ 920.000 ")
         leia(carroVenda)
         escreval("Digite seu nome")
         leia(nome)
         escreval("-----------------------------------")
         escreval("Digite seu CPF")
         leia(cpf)
         escreval("-----------------------------------")
         escreval("Solicitação feita, vá a uma loja ")
         escreval("para poder finalizar a sua compra !")
      caso 2
         escreval("Operação cancelada!")
   fimescolha
fimprocedimento

procedimento alugueis()
inicio
   escreval("-----------------------------------")
   escreval("Veiculos Disponiveis Para Aluguel")
   escreval("-----------------------------------")
   escreval("1. Onix")
   escreval("2. Fiat Uno")
   escreval("3. Peugeot 266")
   escreval("-----------------------------------")
   escreval(" Gostaria de alugar? ")
   escreval(" 1 - Sim")
   escreval(" 2 - Não")
   leia(opcaoAluguel)

   escolha opcaoAluguel
      caso 1
         escreval("-----------------------------------")
         escreval("Qual gostaria de alugar?")
         escreval("-----------------------------------")
         escreval("1 - Onix | R$ 1500 ")
         escreval("2 - Fiat Uno | R$ 700 ")
         escreval("3 - Peugeot 266 | R$ 1100 ")
         leia(carroAluguel)
         escreval("-----------------------------------")
         escreval("Solicitação feita, vá a uma loja ")
         escreval("para poder finalizar a seu aluguel !")
      caso 2
         escreval("Operação cancelada!")
   fimescolha
fimprocedimento

procedimento FaleConosco()
inicio
   escreval("===================================")
   escreval("========== Fale Conosco =========")
   escreval("Para dúvidas")
   escreval("Entre em contato| atendimento@maonaroda.com")
fimprocedimento

procedimento DuvidasFrequentes()
inicio
   escreval("-----------------------------------")
   escreval("Duvidas Frequentes ")
   escreval("-----------------------------------")
   escreval("1 - Quanto tempo para o carro ficar pronto para entrega?")
   escreval("R= O tempo medio é de 2 semanas")
   escreval("-----------------------------------")
   escreval("2 - Aceita cartao de credito de quantas vezes?")
   escreval("R= Aceitamos o cartao em ate 6x sem juros")
   escreval("-----------------------------------")
   escreval("3 - Tem como dar uma entrada ?")
   escreval("R= Sim, é possivel fazer uma entrada e parcelar o restante")
fimprocedimento

procedimento QuemSomos()
inicio
   escreval("-----------------------------------")
   escreval("Quem Somos")
   escreval("Somos a mão na roda")

fimprocedimento


repita
    MenuPrincipal()

   escolha opcaoMenu
     caso 1
       vendas()
     caso 2
       alugueis()
     caso 3
       FaleConosco()
     caso 4
       DuvidasFrequentes()
     caso 5
       QuemSomos()
     caso 6
       escreval("Encerrando o sistema... Até Logo!")
     outrocaso
       escreval("Opção invalida! Tente novamente..")
   fimescolha

ate opcaoMenu = 6

Fimalgoritmo