//

programa
{
	inclua biblioteca Graficos-->g
	inclua biblioteca Util
	inclua biblioteca Teclado-->tec
	const inteiro largura=2030
	const inteiro altura=1024
	inteiro y=930
	inteiro x=930
	
	funcao inicio()
	{
		construir_janela()	
	}
	funcao construir_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura, altura)
		g.definir_titulo_janela("exec")
		enquanto(verdadeiro){
			limpar()
			upd()
			desenhar()
			g.renderizar()
		}
	}
	funcao limpar(){
		g.definir_cor(g.COR_VERDE)
		g.limpar()
	}
	funcao desenhar(){
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(x, y, 25, 60, falso, verdadeiro)
	}
	funcao upd(){
		se(tec.tecla_pressionada(38)){
			y=y-1.2
		}
		senao se(tec.tecla_pressionada(40)){
			y=y+1.2	
		}
		senao se(tec.tecla_pressionada(39)){
			x=x+1.2
		}
		senao se(tec.tecla_pressionada(37)){
			x=x-1.2
		}
		
		se(tec.alguma_tecla_pressionada()){
			g.desenhar_texto(1000, 500, "tecla")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 951; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */