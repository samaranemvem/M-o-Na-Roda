Algoritmo "SistemaMaoNaRoda"

Var
   opcaoMenu, opcaoAluguel, opcaoVenda, carroVenda, carroAluguel : inteiro
   nome : caractere
   cpf, a, parcelas : inteiro
   valorTotal, valorFinal, taxaJuros, jurosTotal : real
   nomeCarro : caractere
   nomeCarro2 : caractere
   dia : inteiro
   horario : inteiro
   x : caractere
   y : caractere
   diaria : inteiro
   calc, z, b: real
   opt : real
Inicio

   // taxa de juros de 1,5 %
   taxaJuros <- 0.015

   // Procedimento Tela Inicial
   procedimento TelaInicial()
   inicio
      escreval("")
      escreval("================================")
      escreval("BEM-VINDO AO SISTEMA M�O NA RODA")
      escreval("--------------------------------")
      escreval("PRESSIONE ENTER PARA CONTINUAR..")
      escreval("================================")
      leia(a)
   fimprocedimento


   // Procedimento Menu Principal
   procedimento MenuPrincipal()
   inicio
      escreval("")
      escreval("================================")
      escreval("         MENU PRINCIPAL")
      escreval("================================")
      escreval("1 - Vendas")
      escreval("2 - Alugueis")
      escreval("3 - Fale Conosco")
      escreval("4 - Duvidas Frequentes")
      escreval("5 - Quem somos")
      escreval("6 - Sair")
      escreval("--------------------------------")
      escreval("Escolha uma op��o: ")
      escreval("--------------------------------")
      leia(opcaoMenu)
   fimprocedimento

   // Procedimento Vendas com c�lculo de parcelamento
   procedimento Vendas()
   inicio
      escreval("")
      escreval("================================")
      escreval("ESCOLHA UMA CATEGORIA DE VEICULO")
      escreval("================================")
      escreval("1. Popular")
      escreval("2. Esportivo")
      leia(opcaoVenda)

      escolha opcaoVenda
         caso 1
            escreval("")
            escreval("-----------------------------------")
            escreval("CARROS POPULARES DISPONIVEIS")
            escreval("-----------------------------------")
            escreval("1 - FIAT UP | R$ 26.900")
            escreval("2 - Chevrolet Onix | R$ 86.150")
            escreval("3 - Renault Sandero | R$ 72.975")
            escreval("4 - Volkswagen Voyage | R$ 58.700")
            escreval("5 - Hyundai HB20 | R$ 84.500")
            escreval("--------------------------------------")
            escreval("Escolha o carro desejado para comprar:")
            escreval("--------------------------------------")
            leia(carroVenda)

            escolha carroVenda
             caso 1
              nomeCarro <- "FIAT UP"
               escreval("Carro escolhido: ", nomeCarro)
             caso 2
              nomeCarro <- "Chevrolet Onix"
               escreval("Carro escolhido: ", nomeCarro)
             caso 3
              nomeCarro <- "Renault Sandero"
               escreval("Carro escolhido: ", nomeCarro)
             caso 4
              nomeCarro <- "Volkswagen Voyage"
               escreval("Carro escolhido: ", nomeCarro)
             caso 5
              nomeCarro <- "Hyundai HB20"
               escreval("Carro escolhido: ", nomeCarro)
            fimescolha



            se carroVenda = 1 entao
               valorTotal <- 26900
            senao
               se carroVenda = 2 entao
                  valorTotal <- 86150
               senao
                  se carroVenda = 3 entao
                     valorTotal <- 72975
                  senao
                     se carroVenda = 4 entao
                        valorTotal <- 58700
                     senao
                        se carroVenda = 5 entao
                           valorTotal <- 84500
                        fimse
                     fimse
                  fimse
               fimse
            fimse

         caso 2
            escreval("")
            escreval("--------------------------------------")
            escreval("CARROS ESPORTIVOS DISPONIVEIS")
            escreval("-----------------------------------")
            escreval("1 - Porsche 911 | R$ 1.100.000")
            escreval("2 - BMW X6 | R$ 980.000")
            escreval("3 - Mercedez g63 | R$ 2.500.000")
            escreval("4 - Lamborghini SVJ | R$ 7.900.000")
            escreval("5 - McLaren 720S | R$ 3.500.000")
            escreval("--------------------------------------")
            escreval("Escolha o carro desejado para comprar:")
            escreval("--------------------------------------")
            leia(carroVenda)

            escolha carroVenda
             caso 1
              nomeCarro <- "Porsche 911"
               escreval("Carro escolhido: ", nomeCarro)
             caso 2
              nomeCarro <- "BMW X6"
               escreval("Carro escolhido: ", nomeCarro)
             caso 3
              nomeCarro <- "Mercedez G63"
               escreval("Carro escolhido: ", nomeCarro)
             caso 4
              nomeCarro <- "Lamborghini SVJ"
               escreval("Carro escolhido: ", nomeCarro)
             caso 5
              nomeCarro <- "McLaren 720S"
               escreval("Carro escolhido: ", nomeCarro)
            fimescolha




            se carroVenda = 1 entao
               valorTotal <- 1100000
            senao
               se carroVenda = 2 entao
                  valorTotal <- 980000
               senao
                  se carroVenda = 3 entao
                     valorTotal <- 2500000
                  senao
                     se carroVenda = 4 entao
                        valorTotal <- 7900000
                     senao
                        se carroVenda = 5 entao
                           valorTotal <- 3500000
                        fimse
                     fimse
                  fimse
               fimse
            fimse
      fimescolha
      escreval(" ")
      escreval("---------------------------------------")
      escreval("          ","SIMULADOR DE JUROS")
      escreval("---------------------------------------")
      escreval("Digite o n�mero de parcelas (1 a 12): ")
      leia(parcelas)

      // C�lculo do valor total com juros
      jurosTotal <- valorTotal * taxaJuros * parcelas
      valorFinal <- valorTotal + jurosTotal

      escreval("--------------------------------------------------------------")
      escreval("Valor final com juros de ", parcelas,"x : R$ ", valorFinal)
      escreval("--------------------------------------------------------------")
      escreval("Digite seu nome: ")
      leia(nome)
      escreval("--------------------------------------------------------------")
      escreval("Digite seu CPF: ")
      leia(cpf)
      escreval("")
      escreval("------------------------------------------------------------")
      escreval("SOLICITA��O FEITA, AGORA VAMOS AGENDAR UM ATENDIMENTO")
      escreval("PRESENCIAL PARA FINALIZAR A SUA COMPRA COM UM ATENDENTE!!")
      escreval("------------------------------------------------------------")
      escreval("Escolha o dia:")
      escreval("")
      escreval("1 - Segunda-Feira")
      escreval("2 - Ter�a-Feira")
      escreval("3 - Quarta-Feira")
      escreval("4 - Quinta-Feira")
      escreval("5 - Sexta-Feira")
      leia(dia)


      escolha dia
        caso 1
          x <- "SEGUNDA-FEIRA"
        caso 2
          x <- "TER�A-FEIRA"
        caso 3
          x <- "QUARTA-FEIRA"
        caso 4
          x <- "QUINTA-FEIRA"
        caso 5
          x <- "SEXTA-FEIRA"
      fimescolha


      escreval("------------------------------------------------------------")
      escreval("Horarios Disponiveis: ")
      escreval("")
      escreval("1 - 9:40")
      escreval("2 - 13:30")
      escreval("3 - 17:00")
      leia(horario)


      escolha horario
        caso 1
          y <- "9:40"
        caso 2
          y <- "13:30"
        caso 3
          y <- "17:00"
      fimescolha


      escreval("------------------------------------------------------------")
      escreval("AGENDAMENTO REALIZADO PARA ", x," as ", y)
      escreval("OBRIGADO POR ESCOLHER A M�O NA RODA !!")
      escreval("------------------------------------------------------------")



   fimprocedimento

   // Procedimento para a funcionalidade de Aluguel com c�lculo de parcelamento
   procedimento Alugueis()
   inicio
      escreval("================================")
      escreval("ESCOLHA UMA CATEGORIA DE VEICULO")
      escreval("================================")
      escreval("1. Popular")
      escreval("2. Esportivo")
      leia(opcaoAluguel)

      escolha opcaoAluguel
         caso 1
            escreval("-----------------------------------------")
            escreval("CARROS POPULARES DISPONIVEIS PARA ALUGUEL")
            escreval("-----------------------------------------")
            escreval("1 - Volkswagen Gol 1.0 | R$ 85/Dia ")
            escreval("2 - Fiat Argo 1.0 | R$ 75/Dia ")
            escreval("3 - Toyota Etios 1.3 | R$ 70/Dia ")
            escreval("4 - Honda Fit 1.5 | R$ 85/Dia")
            escreval("5 - Volkswagen Up! 1.0 | R$ 58/Dia")
            escreval("----------------------------------------")
            escreval("Escolha o carro desejado para alugar:")
            escreval("----------------------------------------")
            leia(carroAluguel)

            escolha carroAluguel
             caso 1
              nomeCarro2 <- "Volkswagen Gol 1.0"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 2
              nomeCarro2 <- "Fiat Argo 1.0"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 3
              nomeCarro2 <- "Toyota Etios 1.3"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 4
              nomeCarro2 <- "Honda Fit 1.5"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 5
              nomeCarro2 <- "Volkswagen Up!"
               escreval("Carro escolhido: ", nomeCarro2)
            fimescolha




            se carroAluguel = 1 entao
               valorTotal <- 85
            senao
               se carroAluguel = 2 entao
                  valorTotal <- 75
               senao
                  se carroAluguel = 3 entao
                     valorTotal <- 70
                  senao
                     se carroAluguel = 4 entao
                        valorTotal <- 85
                     senao
                        se carroAluguel = 5 entao
                           valorTotal <- 58
                        fimse
                     fimse
                  fimse
               fimse
            fimse

         caso 2
            escreval("")
            escreval("------------------------------------------")
            escreval("CARROS ESPORTIVOS DISPONIVEIS PARA ALUGUEL")
            escreval("------------------------------------------")
            escreval("1 - Porsche 718 Cayman | R$ 450/Dia ")
            escreval("2 - Audi TT | R$ 330/Dia ")
            escreval("3 - Ford Mustang GT | R$ 380/Dia ")
            escreval("4 - BMW M2 | R$ 420/Dia")
            escreval("5 - Chevrolet Camaro SS | R$ 330/Dia")
            escreval("------------------------------------------")
            escreval("Escolha o carro desejado para alugar:")
            escreval("------------------------------------------")
            leia(carroAluguel)

            escolha carroAluguel
             caso 1
              nomeCarro2 <- "Porsche 718 Cayman"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 2
              nomeCarro2 <- "Audi TT"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 3
              nomeCarro2 <- "Ford Mustang GT"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 4
              nomeCarro2 <- "BMW M2"
               escreval("Carro escolhido: ", nomeCarro2)
             caso 5
              nomeCarro2 <- "Chevrolet Camaro SS"
               escreval("Carro escolhido: ", nomeCarro2)
            fimescolha




            se carroAluguel = 1 entao
               valorTotal <- 450
            senao
               se carroAluguel = 2 entao
                  valorTotal <- 330
               senao
                  se carroAluguel = 3 entao
                     valorTotal <- 380
                  senao
                     se carroAluguel = 4 entao
                        valorTotal <- 420
                     senao
                        se carroAluguel = 5 entao
                           valorTotal <- 330
                        fimse
                     fimse
                  fimse
               fimse
            fimse
      fimescolha


      escreval("------------------------------------------")
      escreval("Quantas diarias gostaria? ")
      leia(diaria)

      calc <- valorTotal*diaria
      
      escreval("Total: ", calc)
      escreval("")
      escreval("Escolha uma opc��o: ")
      escreval("1 - A vista")
      escreval("2 - Parcelar")
      leia(opt)
      
      escolha opt
       caso 1
        z <- calc
        escreval("Valor a vista:  ", z)
       caso 2
        escreval("------------------------------------------")
        escreval("Digite o n�mero de parcelas (1 a 12): ")
        leia(parcelas)
        z <- calc*taxaJuros
        b <- (calc/parcelas) + z
        escreval("Valor parcelado com juros: ", b )
      fimescolha

      escreval("---------------------------------------------------------------")
      escreval("Digite seu nome: ")
      leia(nome)
       escreval("--------------------------------------------------------------")
      escreval("Digite seu CPF: ")
      leia(cpf)
      escreval("")
      escreval("------------------------------------------------------------")
      escreval("SOLICITA��O FEITA, AGORA VAMOS AGENDAR UM ATENDIMENTO")
      escreval("PRESENCIAL PARA FINALIZAR A SUA COMPRA COM UM ATENDENTE!!")
      escreval("------------------------------------------------------------")
      escreval("Escolha o dia:")
      escreval("")
      escreval("1 - Segunda-Feira")
      escreval("2 - Ter�a-Feira")
      escreval("3 - Quarta-Feira")
      escreval("4 - Quinta-Feira")
      escreval("5 - Sexta-Feira")
      leia(dia)

      escolha dia
        caso 1
          x <- "SEGUNDA-FEIRA"
        caso 2
          x <- "TER�A-FEIRA"
        caso 3
          x <- "QUARTA-FEIRA"
        caso 4
          x <- "QUINTA-FEIRA"
        caso 5
          x <- "SEXTA-FEIRA"
      fimescolha

      escreval("------------------------------------------------------------")
      escreval("Horarios Disponiveis: ")
      escreval("")
      escreval("1 - 9:40")
      escreval("2 - 13:30")
      escreval("3 - 17:00")
      leia(horario)

      escolha horario
        caso 1
          y <- "9:40"
        caso 2
          y <- "13:30"
        caso 3
          y <- "17:00"
      fimescolha



      escreval("------------------------------------------------------------")
      escreval("AGENDAMENTO REALIZADO PARA ", x," as ", y)
      escreval("OBRIGADO POR ESCOLHER A M�O NA RODA !!")
      escreval("------------------------------------------------------------")
   fimprocedimento

   // Procedimento Fale Conosco
   procedimento FaleConosco()
   inicio
      escreval("")
      escreval("---------------------------------")
      escreval("========== Fale Conosco =========")
      escreval("")
      escreval("Email: atendimento@maonaroda.com")
      escreval("")
      escreval("Telefone: (99) 9 9999-9999")
   fimprocedimento

   // Procedimento D�vidas Frequentes
   procedimento DuvidasFrequentes()
   inicio
      escreval("")
      escreval("---------------------------------")
      escreval("        ","DUVIDAS FREQUENTES")
      escreval("---------------------------------")
      escreval("")
      escreval("1 - Quanto tempo para o carro ficar pronto?")
      escreval("R= O tempo m�dio � de 2 semanas")
      escreval("")
      escreval("2 - Documentos necess�rios para alugar")
      escreval("R= RG, CNH v�lida, e cart�o de cr�dito")
      escreval("")
      escreval("3 - Qual a quilometragem inclusa ?")
      escreval("R= Varia conforme o carro e plano, media de 200km/dia")
   fimprocedimento

   // Procedimento Quem Somos
   procedimento QuemSomos()
   inicio
      escreval("")
      escreval("---------------------------------")
      escreval("=========== Quem Somos? =========")
      escreval("---------------------------------")
      escreval("")
      escreval("A M�ONARODA � uma empresa consolidada no ramo")
      escreval("de vendas e alugu�is de ve�culos. Oferecendo")
      escreval("uma ampla variedade de op��es para atender ")
      escreval("tanto compradores quanto locat�rios.")
      escreval("Com excelente reputa��o, a empresa se dedica a")
      escreval("prestar servi�os de alta qualidade e ve�culos bem")
      escreval("conservados, garantindo a satisfa��o e confian�a")
      escreval("dos clientes")
   fimprocedimento

   // Execu��o do Programa Principal
   repita
      TelaInicial()
      MenuPrincipal()

      escolha opcaoMenu
         caso 1
            Vendas()
         caso 2
            Alugueis()
         caso 3
            FaleConosco()
         caso 4
            DuvidasFrequentes()
         caso 5
            QuemSomos()
         caso 6
            escreval("Encerrando o sistema... At� Logo!")
         outrocaso
            escreval("Op��o inv�lida! Tente novamente.")
      fimescolha
   ate opcaoMenu = 6

Fimalgoritmo