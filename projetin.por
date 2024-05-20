//

programa
{
	inclua biblioteca Graficos-->g
	inclua biblioteca Util
	inclua biblioteca Teclado-->tec
	const inteiro largura=1820
	const inteiro altura=1000
	inteiro y=660
	inteiro x=700
	inteiro esccont=0
	inteiro tecpress=0
	inteiro vertec=0
	
	funcao inicio()
	{
		construir_janela()	
	}
	funcao construir_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura, altura)
		g.entrar_modo_tela_cheia()
		g.definir_titulo_janela("exec")
		enquanto(verdadeiro){
			limpar()
			upd2()
			upd()
			desenhar()
			g.renderizar()
		}
	}
	funcao limpar(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
	funcao desenhar(){
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(x, y, 25, 60, falso, verdadeiro)
	}
	funcao upd(){
		se(tec.tecla_pressionada(38)){
			y=y--
		}
		senao se(tec.tecla_pressionada(40)){
			y=y++	
		}
		senao se(tec.tecla_pressionada(39)){
			x=x++
		}
		senao se(tec.tecla_pressionada(37)){
			x=x--
		}
		senao se(tec.tecla_pressionada(27)){
			g.sair_modo_tela_cheia()
			esccont++
		}
		senao se(tec.tecla_pressionada(27)){
			esccont++
		}
		senao se(tec.tecla_pressionada(122)){
			g.entrar_modo_tela_cheia()
			esccont=0
		}
		se(esccont>=2){
			g.fechar_janela()
		}
	}
	funcao upd2(){
		vertec=tec.ler_tecla()
		se(vertec!=0){
			cadeia vertec1=vertec
			g.desenhar_texto(500, 500, vertec1)
		}
		se(tecpress>0){
			g.desenhar_texto(1000, 600, "texto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */