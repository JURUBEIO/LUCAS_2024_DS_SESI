//

programa
{
	inclua biblioteca Graficos-->g
	inclua biblioteca Util-->u
	inclua biblioteca Teclado-->tec
	const inteiro largura=1820
	const inteiro altura=1000
	inteiro y=660
	inteiro x=680
	inteiro ycoli1=-100
	inteiro xcoli1=680
	inteiro ycoli2=-180
	inteiro xcoli2=600
	inteiro xcoli3=520
	inteiro xcoli4=440
	inteiro xcoli5=350
	inteiro xcoli6=760
	inteiro xcoli7=840
	inteiro xcoli8=920
	inteiro ycoli3=-30
	inteiro ycoli4=-90
	inteiro ycoli5=-300
	inteiro ycoli6=-370
	inteiro ycoli7=-15
	inteiro ycoli8=-98
	inteiro esccont=0
	inteiro a=0
	inteiro b=0
	
	funcao inicio()
	{
		construir_janela()	
	}
	//construção e renderização da janela grafica
	funcao construir_janela(){
		//chamada de inicio do modo grafico
		g.iniciar_modo_grafico(verdadeiro)
		//definição das proporções da janela em pixels
		g.definir_dimensoes_janela(largura, altura)
		//iniciar em modo de tela cheia
		g.entrar_modo_tela_cheia()
		//remoção de detalhes da borda
		g.ocultar_borda_janela()
		//nome da janela
		g.definir_titulo_janela("exec")
		//verificador do modo grafico (enquanto modo grafico ativo, rode o programa, enquanto não encerre o programa)
		enquanto(verdadeiro){
			limpar()
			upd()
			desenhar_rua()
			desenhar_faixas()
			desenhar()
			desenhar2()
			g.renderizar()
		}
	}
	funcao limpar(){
		//função para criação de um plano de fundo para o ambiente gráfico
		g.definir_cor(g.COR_AZUL)
		g.limpar()
	}
	funcao desenhar_rua(){
		//funca para criação do desenho base da rua
		g.definir_cor(g.COR_PRETO)
		//comando para definição de cor do objeto, nesse caso a rua
		g.desenhar_retangulo(350 , 0 ,600, altura, falso, verdadeiro)
		//definição das porpoções do objeto sendo em respectiva ordem eixo x, eixo y, largura do objeto, altura do objeto, arredondamento dos cantos e preenchimento do objeto
	}
	//função para desenho das faixa da rua
	funcao desenhar_faixas(){
		//a cada 40 linhas equivalem a 1 faixa
		// com distancias de 80 pixels uma da outra cada faixa segue o mesmo padrão de desenvolvimento
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(640, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(660, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(720, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(740, 1000, 5, 30, falso, verdadeiro)
				g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(800, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(820, 1000, 5, 30, falso, verdadeiro)
				g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(880, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(900, 1000, 5, 30, falso, verdadeiro)
				g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(560, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(580, 1000, 5, 30, falso, verdadeiro)
				g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(480, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(500, 1000, 5, 30, falso, verdadeiro)
						g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 0, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 50, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 100, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 150, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 200, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 250, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 300, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 350, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 400, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 450, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 500, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 550, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 600, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 650, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 700, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 750, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 800, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 850, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 900, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 950, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(400, 1000, 5, 30, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255,255,0))
		g.desenhar_retangulo(420, 1000, 5, 30, falso, verdadeiro)		
	}
	//função para desenvolvimento de objeto nesse caso o veiculo controlado pelo jogador
	funcao desenhar(){
		//comando para definir a cor do objeto
		g.definir_cor(g.COR_BRANCO)
		//proporções do objeto
		g.desenhar_retangulo(x, y, 25, 60, falso, verdadeiro)
	}
	funcao desenhar2(){
		//função para criação dos veiculos que o jogador tera de desviar
		//segue o mesmo padrão de desenvolvimento do veiculo principal porem com posições diferentes do eixo x e y
		g.definir_cor(g.COR_VERDE)
		g.desenhar_retangulo(xcoli1, ycoli1, 25, 60, falso, verdadeiro)
		g.definir_cor(g.criar_cor(255 ,0 ,0))
		g.desenhar_retangulo(xcoli2, ycoli2, 25, 70, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(xcoli3, ycoli3, 25, 40, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(xcoli4, ycoli4, 25, 90, verdadeiro, verdadeiro)
		g.definir_cor(g.criar_cor(128, 128, 128))
		g.desenhar_retangulo(xcoli5, ycoli5, 30, 2000, verdadeiro, verdadeiro)
		g.definir_cor(g.criar_cor(0,250,128))
		g.desenhar_retangulo(xcoli6, ycoli6, 25, 77, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_AMARELO)
		g.desenhar_retangulo(xcoli7, ycoli7, 25, 70, verdadeiro, verdadeiro)
		g.definir_cor(g.criar_cor(128, 128, 128))
		g.desenhar_retangulo(xcoli8, ycoli8, 30, 2000, verdadeiro, verdadeiro)
	}
	funcao upd(){
		//função para verificação frame a frame
		//permite que o jogo verifique mudanças a todo momento
		faca{
			//loop faca enquanto para que os veiculos obstaculos andem em direção ao jogador
			ycoli1++
			ycoli2++
			ycoli3++
			ycoli4++
			ycoli6++
			ycoli7++
			a++
			b++
			se(b<=5){
				//condicional para criar uma forma de "aleatoriedade" nas aparições dos veiculos
				se(ycoli1>1000){
					//condicional se usada para que os veiculos apareçam intermitantemente
					ycoli1=-100
				}
				senao se(ycoli2>1000){
					ycoli2=-140
				}
				senao se(ycoli3>1000){
					ycoli3=-10
				}
				senao se(ycoli4>1000){
					ycoli4=-250
				}
				senao se(ycoli6>1000){
					ycoli6=-190
				}
				senao se(ycoli7>1000){
					ycoli7=-540
				}
			}
			senao{
				b=0
				se(ycoli1>1000){
					ycoli1=-20
				}
				senao se(ycoli2>1000){
					ycoli2=-70
				}
				senao se(ycoli3>1000){
					ycoli3=-10
				}
				senao se(ycoli4>1000){
					ycoli4=-140
				}
				senao se(ycoli6>1000){
					ycoli6=-55
				}
				senao se(ycoli7>1000){
					ycoli7=-230
				}
			}
		}enquanto(a<=10)
		se(ycoli1==y){
			//condicional para verificar se ouve ou não colisão
			se(xcoli1>x){
				//primeiro veiculo em caso de colisão ao lado direito do objeto
				se(xcoli1-x<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
			senao{
				se(x-xcoli1<25){
					//primeiro veiculo em caso de colisão ao lado esquerdo do objeto
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli2==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli2>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli2-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli2<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli3==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli3>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli3-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao se(xcoli3<x){
				se(x-xcoli3<25){
					u.aguarde(2000)
					g.fechar_janela()
				}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli2<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli4==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli4>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli4-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli4<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli5==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli5>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli5-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli5<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli6==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli6>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli6-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli2<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli7==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli7>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli7-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli7<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		senao se(ycoli8==y){
			//verificador de colisão com o segundo veiculo
			se(xcoli8>x){
				//verificador em caso de colisão com o lado direito do segundo veiculo
				se(xcoli8-x<25){
				u.aguarde(2000)	
				g.fechar_janela()
				}
				senao{}
			}
			senao{
				//verificador em caso de colisão com o lado esquerdo do veiculo
				se(x-xcoli8<25){
				u.aguarde(2000)
				g.fechar_janela()
				}
			}
		}
		
		//teclas de controle
		se(tec.tecla_pressionada(38)){
			//controle para mover o carro para frente (codigo 38 equivale a SETA PARA CIMA)
			y=y--
		}
		senao se(tec.tecla_pressionada(40)){
			//controle para mover o carro para tras (codigo 40 equivale a SETA PARA BAIXO)
			y=y++	
		}
		senao se(tec.tecla_pressionada(39)){
			//controle para mover o carro para direita (codigo 39 equivale a SETA PARA DIREITA)
			x=x++
		}
		senao se(tec.tecla_pressionada(37)){
			//controle para mover o carro para esquerda (codigo 37 equivale a SETA PARA ESQUERDA)
			x=x--
		}
		senao se(tec.tecla_pressionada(27)){
			//controle para colocar em modo janela (codigo 27 equivale a tecla ESC)
			g.sair_modo_tela_cheia()
			//variavel esccont utilizada para verificar quantas vezes a tecla esc foi apertada para indentificar se o usuario deseja encerrar o jogo
			esccont++
		}
		senao se(tec.tecla_pressionada(27)){
			//controlador para fechar o jogo
			esccont++
		}
		senao se(tec.tecla_pressionada(122)){
			//controle para voltar ao modo tela cheia (codigo 122 equivale a tecla F11)
			g.entrar_modo_tela_cheia()
			//esccont volta a valer zero para que seja possivel sair e voltar ao modo tela cheia mais de uma vez
			esccont=0
		}
		se(esccont>=2){
			//condicional para verificar se o usuario deseja encerrar o programa
			g.fechar_janela()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 34654; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */