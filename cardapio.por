/*EX7 Lucas Medeiros 26/04/2024*/

programa {
  funcao inicio() {
    cadeia lan
    cadeia beb
    escreva("digite o lanche desejado: ")
    leia(lan)
    se(lan=="bauru"){
      escreva("\nguaran� indisponivel\n")
    }senao se(lan=="X galinha"){
      escreva("\n�gua indisponivel\n")
    }senao se(lan=="pizza"){
      escreva("\ntemos vinho e �gua disponiveis\n")
    }senao{}
    escreva("digite a bebida desejada: ")
    leia(beb)
    se(lan=="bauru" e beb=="guaran�"){
      escreva("pedido invalido")
    }senao se(lan=="X galinha" e beb=="�gua"){
      escreva("pedido invalido")
    }senao se(lan=="pizza" e beb!="�gua" e beb!="vinho"){
      escreva("pedido invalido")
    }
  }
}
