programa
{
	inclua biblioteca Util-->u
	inclua biblioteca Matematica-->m
	inteiro primdig=1
	inteiro segdig=3
	inteiro digsseguin=0
	inteiro numluc[16777216]
	inteiro digi
	inteiro posi1=0
	inteiro posi2=0
	real poten
	inteiro cas
	logico continuar=verdadeiro
	inteiro b=0
	inteiro z
	logico numcalc=falso
	logico numins=falso
	
	//função inicial englobando todo o código
	funcao inicio()
	{
		//condicional para verificar se foi solicitado o encerramento do programa
		se(continuar==verdadeiro){
			menu()
		}
	}
	//função para receber a quantia de digitos que devem ser calculados
	funcao quant_digi(){
		escreva("Quantos numeros da sequencia do número de lucas após o 3 deseja calcular?: ")
		leia(digi)
		//variavel logica para verificar se os valores foram inseridos
		numins=verdadeiro
		calcular_numluc()
	}
	//função para calcular o numero de lucas
	funcao calcular_numluc(){
		se(digi<=0 e numins==verdadeiro){//<--condicional para verificar se o numero digitado é positivo e se algum numero foi digitado
			escreva("NUMERO DIGITADO INVALIDO, NUMERO PRECISA SER INTEIRO POSITIVO MAIOR QUE ZERO\n")
			quant_digi()//<--chamando função para reinserir um valor valido
		}
		senao se(digi>0 e numins==verdadeiro){//<--execução do codigo com as condções necessarias atendidas 
			para(inteiro a=0;a<digi;a++){
				numcalc=verdadeiro
				digsseguin=primdig+segdig
				numluc[a]=digsseguin
				primdig=digsseguin
				se(a>0){
					z=a-1
					segdig=numluc[z]
				}
			}
		}
	}
	//função para mostrar o numero obtido
	funcao mostrar_numluc(){
		escreva("1, 3, ")//<--os dois primeiros digitos que são fixos
		para(inteiro a=0;a<digi;a++){//<--loop "para" utilizado para escrever o vetor onde estão salvos os numeros calculados
			escreva(numluc[a],", ")
		}
	}
	funcao pote_com_numluc(){
		poten=m.potencia(numluc[posi1],numluc[posi2])
		escreva("o resultado é: ",poten)
	}
	funcao base_para_poten(){
		se(numcalc==verdadeiro){
		escreva("qual posição do numero de lucas deseja usar como base da potencia?: ")
		leia(posi1)
		se(posi1<0){
			escreva("POSIÇÃO INVALIDA POSIÇÃO PRECISA SER POSITIVO OU ZERO\n")
			base_para_poten()
		}
		senao{
			expoente_para_poten()
		}
		}
		senao{
			escreva("NUMERO DE LUCAS NÃO CALCULADO RETORNE AO MENU\n")
			menu()
		}
	}
	funcao expoente_para_poten(){
		escreva("qual posição do numero de lucas deseja usar como expoente?: ")
		leia(posi2)
		se(posi2<0){
			escreva("POSIÇÃO INVALIDA POSIÇÃO PRECISA SER POSITIVO OU ZERO\n")
			expoente_para_poten()
		}
		senao{
			pote_com_numluc()
		}
	}
	funcao encerrar(){
		para(inteiro a=0;a<6;a++){
			u.aguarde(400)
			escreva("[]")
			continuar=falso
		}
	}
	funcao menu(){
		escreva("o que deseja?\n1-Calcular o numero de lucas\n2-Ver o numero de lucas\n3-calcular uma potenciação utilizando o numero de lucas\n4-encerrar\nR: ")
		leia(cas)
		escolha (cas){
			caso 1:
			quant_digi()
			pare
			caso 2:
			mostrar_numluc()
			pare
			caso 3:
			base_para_poten()
			pare
			caso 4:
			encerrar()
			pare
		}
		inicio()
	}
	funcao calc(){
			digsseguin=(primdig)+(segdig)
			primdig=digsseguin
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */