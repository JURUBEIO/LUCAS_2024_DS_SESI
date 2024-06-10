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
 logico dadosins=falso, finali=falso, calcsrealizados=falso
  funcao inicio() {
    faca{
        para(cont=0; cont<1; cont++)
        { limpa()
          escreva("\n   SEJA BEM  VINDO AO APLICATIVO DE NAVEGAﾃ�ﾃグ DE VFR!   ")
          escreva("\nSelecione a opﾃｧﾃ｣o que deseja:  ")
          escreva("\n 1- CADASTRAR DADOS DE NAVEGAﾃ�ﾃグ \n 2- REALIZAR Cﾃ´CULOS DE Vﾃ念 AUTOMﾃゝICOS \n 3- EXIBIR SAﾃ好A DE DADOS \n 4- SAIR  ")
          escreva("\n")
          leia(cas)
          se(cas>4 ou cas<1){
          escreva("<<<<<<<<<<<<<<<Nﾃ哺ERO INVﾃ´IDO>>>>>>>>>>>>>>>>>\n")
          continuar()
          cont--
      }
    }
        escolha(cas){
        caso 1:
        faca{
        limpa()
        para(conta=0; conta<=0; conta++){
        escreva("Digite o cﾃｳdigo do aerﾃｳdromo de origem: ")
        leia(aero1)
        se(txt.numero_caracteres(aero1)!=4){
          escreva("<<<<<<<<<<<Cﾃ泥IGO INVﾃ´IDO>>>>>>>>>>\n")
          continuar()
          conta--

        }
        
        }
        limpa()
        para(con=0; con<=0; con++){
        escreva("Digite o cﾃｳdigo do aerﾃｳdromo de destino: ")
        leia(aero2)
        se(txt.numero_caracteres(aero2)!=4){
          escreva("<<<<<<<<<<<Cﾃ泥IGO INVﾃ´IDO>>>>>>>>>>\n")
          continuar()
          con--
        }
        
       
     }
        limpa()
        para(aa=0; aa<=0; aa++){
        escreva("Digite a hora da decolagem (primeiros dois dﾃｭgitos de um relﾃｳgio): ")
        leia(hora)
        se(hora<0 ou hora>23){
          escreva("<<<<<<<<<<<HORﾃヽIO INVALIDO>>>>>>>>>>\n")
          continuar()
          conta--
        }
        }
        limpa()
        para(aa=0; aa<=0; aa++){
        escreva("Digite os minutos da decolagem (ﾃｺltimos dois dﾃｭgitos de um relﾃｳgio): ")
        leia(min)
        se(min<0 ou min>59){
          escreva("<<<<<<<<<<<HORﾃヽIO INVALIDO>>>>>>>>>>\n")
          continuar()
          aa--
        }
        limpa()
      }
        limpa()
        para(cc=0; cc<=0; cc++){
        escreva("Digite o fuso horﾃ｡rio local : ")
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
        escreva("Digite o fuso horﾃ｡rio do destino: ")
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
        escreva("Digite o nﾃｺmero de pontos de referﾃｪncia ao longo do trajeto: ")
        leia(ref)
        se(ref<0){
          escreva("<<<<<<<<<<<Nﾃ哺ERO INVALIDO>>>>>>>>>>\n")
          continuar()
          ee--
        }
        limpa()
      }
      limpa()
        pontos_refs()
      limpa()
      escreva("qual o consumo de combustivel do aviﾃ｣o utilizado (litros/hora): ")
      leia(consumo_por_hora)
      limpa()
      dadosins=verdadeiro
      escreva("Deseja criar outra ficha de aviaﾃｧﾃ｣o, prima 1 para sim ou prima qualquer outro nﾃｺmero para nﾃ｣o: ")
      leia(k)
        
    para(inteiro ii=0;ii<ref;ii++){
    	distancia_total=distancia_total+dists_refs[ii]
    }
        


        
    } enquanto(k==1)
    pare
    caso 2:
    se(dadosins==verdadeiro){
    	calcs_geral()
    	calcsrealizados=verdadeiro
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
    senao se(dadosins==falso){
    	limpa()
    	escreva("DADOS NÃO INSERIDOS\n")
    	continuar()
    }
    senao se(dadosins==verdadeiro e calcsrealizados==falso){
    	limpa()
    	escreva("DADOS NÃO CALCULADOS\n")
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
			escreva("CALCULOS REALIZADOS COM SUCESSO\n")
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
        	leia(refe[jj])
        	se(txt.numero_caracteres(refe[jj])>30 ou txt.numero_caracteres(refe[jj])==0){
        	limpa()
          escreva("<<<<<<<<<<<REFERÊNCIA INVALIDA>>>>>>>>>>\n")
          continuar()
          jj--
          }
          senao{
          limpa()
          jj++
          dist_refs()
          }
        }
	}
	funcao rumo_mg()
	{
		inteiro x
		kk=pp
		para(kk; kk<ref; kk++){
		limpa()
         	escreva("digite o rumo magnetico do ",kk+1,"° ponto de referencia: ")
         	leia(x)
         	pp=kk+1
         	se(x<0 ou x>360){
         	limpa()
         	escreva("-------RUMO MAGNETICO INVALIDO------\n")
         	continuar()
         	pp--
         	kk--
         	rumo_mg()
         	}
         	senao{
         		rumo_mag[kk]=x
         		pontos_refs()
         	}
	   }
	}
	funcao fim(){
		k=0
		a=0
	}
	funcao tabela_de_dados(){//Nicoly faz a tabela aqui se possivel
		se(calcsrealizados==verdadeiro){ 
		limpa()
		escreva(aero1,"\n")//codigo do aerodromo de decolagem
		escreva(aero2,"\n")//codigo do aerodromo de destino
		para(inteiro ii=0; ii<ref; ii++){//nomes das referencias
			escreva(refe[ii],"\n")
		}
		para(inteiro ii=0; ii<ref; ii++){//distancias
			escreva(dists_refs[ii],"\n")
		}
		para(inteiro ii=0; ii<ref; ii++){//rumo magnetico
			escreva(rumo_mag[ii],"\n")
		}
		continuar()
		}
		senao{
			limpa()
			escreva("\ncalculos não realizados, volte ao menu e utilize a opção 2\n")
			continuar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2436; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {aero1, 9, 16, 5}-{aero2, 9, 23, 5}-{refe, 9, 30, 4}-{dists_refs, 10, 31, 10}-{rumo_mag, 11, 67, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */