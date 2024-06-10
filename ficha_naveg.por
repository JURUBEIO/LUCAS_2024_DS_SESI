programa
{
	inclua biblioteca Util-->U
	inclua biblioteca Matematica-->Mat
	inclua biblioteca Teclado-->tec
	inclua biblioteca Texto-->txt
	const inteiro veloknt=80
 real min, fusc, i, hora_em_decimal, consumo_total, consumo_por_hora
 cadeia digito, aero1, aero2, refe[160000]
 inteiro cas, ref, hora_local, dists_refs[160000], distancia_total=0, horas=0, htempo_total=0, fuso, hora
 inteiro tempo_total, hora_local_pouso, hora_pouso, minutos, az=0, rumo_mag[160000], kk=0, k=2, jj=0, a=1, cont
 inteiro conta, con, aa, bb, cc, dd, ee, pp=0
 logico dadosins=falso, finali=falso
  funcao inicio() {
    faca{
        para(cont=0; cont<1; cont++)
        { limpa()
          escreva("\n   SEJA BEM  VINDO AO APLICATIVO DE NAVEGAÇÃO DE VFR!   ")
          escreva("\nSelecione a opção que deseja:  ")
          escreva("\n 1- CADASTRAR DADOS DE NAVEGAÇÃO \n 2- REALIZAR CÁLCULOS DE VÔO AUTOMÁTICOS \n 3- EXIBIR SAÍDA DE DADOS \n 4- SAIR  ")
          escreva("\n")
          leia(cas)
          se(cas>4 ou cas<1){
          escreva("<<<<<<<<<<<<<<<NÚMERO INVÁLIDO>>>>>>>>>>>>>>>>>\n")
          continuar()
          cont--
      }
    }
        escolha(cas){
        caso 1:
        faca{
        limpa()
        para(conta=0; conta<=0; conta++){
        escreva("Digite o código do aeródromo de origem: ")
        leia(aero1)
        se(txt.numero_caracteres(aero1)!=4){
          escreva("<<<<<<<<<<<CÓDIGO INVÁLIDO>>>>>>>>>>")
          continuar()
          conta--

        }
        
        }
        limpa()
        para(con=0; con<=0; con++){
        escreva("Digite o código do aeródromo de destino: ")
        leia(aero2)
        se(txt.numero_caracteres(aero2)!=4){
          escreva("<<<<<<<<<<<CÓDIGO INVÁLIDO>>>>>>>>>>\n")
          continuar()
          con--
        }
        
       
     }
        limpa()
        para(aa=0; aa<=0; aa++){
        escreva("Digite a hora da decolagem (primeiros dois dígitos de um relógio): ")
        leia(hora)
        se(hora<0 ou hora>23){
          escreva("<<<<<<<<<<<HORÁRIO INVALIDO>>>>>>>>>>\n")
          continuar()
          conta--
        }
        }
        limpa()
        para(aa=0; aa<=0; aa++){
        escreva("Digite os minutos da decolagem (últimos dois dígitos de um relógio): ")
        leia(min)
        se(min<0 ou min>59){
          escreva("<<<<<<<<<<<HORÁRIO INVALIDO>>>>>>>>>>\n")
          continuar()
          aa--
        }
        limpa()
      }
        limpa()
        para(cc=0; cc<=0; cc++){
        escreva("Digite o fuso horário local : ")
        leia(fuso)
        se(fuso<-12 ou fuso>12){
          escreva("<<<<<<<<<<<FUSO INVALIDO>>>>>>>>>>\n")
          continuar()
          cc--
        }
        limpa()
      }
        limpa()
        para(dd=0; dd<=0; dd++){
        escreva("Digite o fuso horário do destino: ")
        leia(fusc)
        se(fusc<-12 ou fusc>12){
          escreva("<<<<<<<<<<<FUSO INVALIDO>>>>>>>>>>\n")
          continuar()
          dd--
        }
        limpa()
      }

    limpa()
        para(ee=0; ee<=0; ee++){
        escreva("Digite o número de pontos de referência ao longo do trajeto: ")
        leia(ref)
        se(ref<0){
          escreva("<<<<<<<<<<<NÚMERO INVALIDO>>>>>>>>>>\n")
          continuar()
          ee--
        }
        limpa()
      }
      limpa()
        pontos_refs()
      limpa()
      escreva("qual o consumo de combustivel do avião utilizado (litros/hora) :")
      leia(consumo_por_hora)
      limpa()
      dadosins=verdadeiro
      escreva("Deseja criar outra ficha de aviação, prima 1 para sim ou prima qualquer outro número para não: ")
      leia(k)
        
    para(inteiro ii=0;ii<ref;ii++){
    	distancia_total=distancia_total+dists_refs[ii]
    }
        


        
    } enquanto(k==1)
    pare
    caso 2:
    se(dadosins==verdadeiro){
    	calcs_geral()
    }
    senao{
    	limpa()
    	escreva("OS DADOS NÃO FORAM INSERIDOS\n")
    	continuar()
    }
    pare
    caso 3:
    se(dadosins==verdadeiro){
    	tabela_de_dados()
    }
    senao{
    	limpa()
    	escreva("DADOS NÃO INSERIDOS OU NÃO CALCULADOS\n")
    	continuar()
    }
    pare
    caso 4:
    limpa()
    escreva("ENCERRANDO PROGRAMA\n")
    para(inteiro u=0; u<6; u++){
    U.aguarde(650)
    escreva("[]")
    fim()
    }
    a=0
    finali=verdadeiro
    pare
   }
    }enquanto(a==1)
    calcs_geral()
  }
    funcao continuar(){
    cadeia enter
    escreva("Pressione ENTER para continuar ...\n") 
    leia(enter)  
  }
  	funcao dist_refs(){
  		inteiro x
         para(az;az<ref;az++){
         limpa()
         escreva("digite a distancia do ",az+1,"° ponto de referencia: ")
         leia(dists_refs[az])
         az++
         rumo_mg()
        }
  	}
    
	
	funcao calcs_geral()
	{
		se(finali==falso){
			se(dadosins==verdadeiro){
			calcs()
			conversao()
			calc_consumo()
			limpa()
			escreva("CALCULOS REALIZADOS COM SUCESSO")
			continuar()
			}
			senao{
			limpa()
			escreva("DADOS NÃO INSERIDOS\n")
			continuar()
			}
		}
		senao{
		}
	}
	funcao calcs()
	{
		hora_local=hora+fuso
		tempo_total=(veloknt/distancia_total)*60
		hora_local_pouso=hora_local+tempo_total
		hora_pouso=hora+tempo_total
		minutos=tempo_total
	}
	funcao conversao()
	{
		se(tempo_total>=60)
		{
			tempo_total=tempo_total-60
			horas=horas++
			htempo_total++
			conversao()
		}
		senao{}
	}
	funcao calc_consumo()
	{
		hora_em_decimal=tempo_total/60
		consumo_total=consumo_por_hora*hora_em_decimal
	}
	funcao pontos_refs()
	{
		para(jj; jj<ref; jj++){
		limpa()
        	escreva("Digite o nome dos pontos de referência: ")
        	leia(refe[ref])
        	se(txt.numero_caracteres(refe[ref])>30 ou txt.numero_caracteres(refe[ref])==0){
        	limpa()
          escreva("<<<<<<<<<<<REFERÊNCIA INVALIDA>>>>>>>>>>\n")
          continuar()
          jj--
          }
          limpa()
          jj++
          dist_refs()
        }
	}
	funcao rumo_mg()
	{
		inteiro x
		kk=pp
		para(kk; kk<ref; kk++){
		limpa()
         	escreva("digite o rumo magnetico do ",kk+1,"° ponto de referencia")
         	leia(x)
         	pp=kk+1
         	se(x>=0 e x<=360){
         	rumo_mag[kk]=x
         	pontos_refs()
         	}
         	senao{
         	limpa()
         	escreva("-------RUMO MAGNETICO INVALIDO------")
         	rumo_mg()
         	}
	   }
	}
	funcao fim(){
		k=0
		a=0
	}
	funcao tabela_de_dados(){//Nicoly faz a tabela aqui se possivel 
		para(inteiro ii=0; ii<ref; ii++){//nomes das referencias
			escreva(refe[ii],"\n")
		}
		para(inteiro ii=0; ii<ref; ii++){//distancias
			escreva(dists_refs[ii],"\n")
		}
		para(inteiro ii=0; ii<ref; ii++){//rumo magnetico
			escreva(rumo_mag[ii],"\n")
			continuar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */