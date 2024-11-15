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
Inicio

   // taxa de juros de 1,5 %
   taxaJuros <- 0.015

   // Procedimento Tela Inicial
   procedimento TelaInicial()
   inicio
      escreval("")
      escreval("================================")
      escreval("BEM-VINDO AO SISTEMA MÃO NA RODA")
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
      escreval("Escolha uma opção: ")
      escreval("--------------------------------")
      leia(opcaoMenu)
   fimprocedimento

   // Procedimento Vendas com cálculo de parcelamento
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
      escreval("Digite o número de parcelas (1 a 12): ")
      leia(parcelas)

      // Cálculo do valor total com juros
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
      escreval("SOLICITAÇÃO FEITA, AGORA VAMOS AGENDAR UM ATENDIMENTO")
      escreval("PRESENCIAL PARA FINALIZAR A SUA COMPRA!!")
      escreval("------------------------------------------------------------")
      escreval("Escolha o dia:")
      escreval("")
      escreval("1 - Segunda-Feira")
      escreval("2 - Terça-Feira")
      escreval("3 - Quarta-Feira")
      escreval("4 - Quinta-Feira")
      escreval("5 - Sexta-Feira")
      leia(dia)
      escreval("------------------------------------------------------------")
      escreval("Horarios Disponiveis: ")
      escreval("")
      escreval("1 - 9:40")
      escreval("2 - 13:30")
      escreval("3 - 17:00")
      leia(horario)
      escreval("------------------------------------------------------------")
      escreval("AGENDAMENTO FEITO, OBRIGADO POR ESCOLHER A MÃO NA RODA")
      escreval("------------------------------------------------------------")



   fimprocedimento

   // Procedimento para a funcionalidade de Aluguel com cálculo de parcelamento
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
            escreval("1 - Volkswagen Gol 1.0 | R$ 70.000 ")
            escreval("2 - Fiat Argo 1.0 | R$ 75.000 ")
            escreval("3 - Toyota Etios 1.3 | R$ 70.000 ")
            escreval("4 - Honda Fit 1.5 | R$ 85.000")
            escreval("5 - Volkswagen Up! 1.0 | R$ 58.000")
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
               valorTotal <- 70000
            senao
               se carroAluguel = 2 entao
                  valorTotal <- 75000
               senao
                  se carroAluguel = 3 entao
                     valorTotal <- 70000
                  senao
                     se carroAluguel = 4 entao
                        valorTotal <- 85000
                     senao
                        se carroAluguel = 5 entao
                           valorTotal <- 58000
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
            escreval("1 - Porsche 718 Cayman | R$ 450.000 ")
            escreval("2 - Audi TT | R$ 330.000 ")
            escreval("3 - Ford Mustang GT | R$ 380.000 ")
            escreval("4 - BMW M2 | R$ 420.000")
            escreval("5 - Chevrolet Camaro SS | R$ 330.000")
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
               valorTotal <- 450000
            senao
               se carroAluguel = 2 entao
                  valorTotal <- 330000
               senao
                  se carroAluguel = 3 entao
                     valorTotal <- 380000
                  senao
                     se carroAluguel = 4 entao
                        valorTotal <- 420000
                     senao
                        se carroAluguel = 5 entao
                           valorTotal <- 330000
                        fimse
                     fimse
                  fimse
               fimse
            fimse
      fimescolha

      escreval("------------------------------------------")
      escreval("Digite o número de parcelas (1 a 12): ")
      leia(parcelas)

      // Cálculo do valor total com juros
      jurosTotal <- valorTotal * taxaJuros * parcelas
      valorFinal <- valorTotal + jurosTotal

      escreval("---------------------------------------------------------------")
      escreval("Valor final com juros de ", parcelas,"x : R$ ", valorFinal )
      escreval("---------------------------------------------------------------")
      escreval("Digite seu nome: ")
      leia(nome)
       escreval("--------------------------------------------------------------")
      escreval("Digite seu CPF: ")
      leia(cpf)
      escreval("")
      escreval("------------------------------------------------------------")
      escreval("SOLICITAÇÃO FEITA, AGORA VAMOS AGENDAR UM ATENDIMENTO")
      escreval("PRESENCIAL PARA FINALIZAR A SUA COMPRA!!")
      escreval("------------------------------------------------------------")
      escreval("Escolha o dia:")
      escreval("")
      escreval("1 - Segunda-Feira")
      escreval("2 - Terça-Feira")
      escreval("3 - Quarta-Feira")
      escreval("4 - Quinta-Feira")
      escreval("5 - Sexta-Feira")
      leia(dia)
      escreval("------------------------------------------------------------")
      escreval("Horarios Disponiveis: ")
      escreval("")
      escreval("1 - 9:40")
      escreval("2 - 13:30")
      escreval("3 - 17:00")
      leia(horario)
      escreval("------------------------------------------------------------")
      escreval("AGENDAMENTO FEITO, OBRIGADO POR ESCOLHER A MÃO NA RODA")
      escreval("------------------------------------------------------------")
   fimprocedimento

   // Procedimento Fale Conosco
   procedimento FaleConosco()
   inicio
      escreval("")
      escreval("---------------------------------")
      escreval("========== Fale Conosco =========")
      escreval("Email: atendimento@maonaroda.com")
      escreval("Telefone: (99) 9 9999-9999")
   fimprocedimento

   // Procedimento Dúvidas Frequentes
   procedimento DuvidasFrequentes()
   inicio
      escreval("")
      escreval("---------------------------------")
      escreval("        ","DUVIDAS FREQUENTES")
      escreval("---------------------------------")
      escreval("")
      escreval("1 - Quanto tempo para o carro ficar pronto?")
      escreval("R= O tempo médio é de 2 semanas")
      escreval("")
      escreval("2 - Documentos necessários para alugar")
      escreval("R= RG, CNH válida, e cartão de crédito")
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
      escreval("A MÃONARODA é uma empresa consolidada no ramo")
      escreval("de vendas e aluguéis de veículos. Oferecendo")
      escreval("uma ampla variedade de opções para atender ")
      escreval("tanto compradores quanto locatários.")
      escreval("Com excelente reputação, a empresa se dedica a")
      escreval("prestar serviços de alta qualidade e veículos bem")
      escreval("conservados, garantindo a satisfação e confiança")
      escreval("dos clientes")
   fimprocedimento

   // Execução do Programa Principal
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
            escreval("Encerrando o sistema... Até Logo!")
         outrocaso
            escreval("Opção inválida! Tente novamente.")
      fimescolha
   ate opcaoMenu = 6

Fimalgoritmo