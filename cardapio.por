/*EX7 Lucas Medeiros 26/04/2024*/

programa {
  funcao inicio() {
    cadeia lan
    cadeia beb
    escreva("digite o lanche desejado: ")
    leia(lan)
    se(lan=="bauru"){
      escreva("\nguaraná indisponivel\n")
    }senao se(lan=="X galinha"){
      escreva("\nágua indisponivel\n")
    }senao se(lan=="pizza"){
      escreva("\ntemos vinho e água disponiveis\n")
    }senao{}
    escreva("digite a bebida desejada: ")
    leia(beb)
    se(lan=="bauru" e beb=="guaraná"){
      escreva("pedido invalido")
    }senao se(lan=="X galinha" e beb=="água"){
      escreva("pedido invalido")
    }senao se(lan=="pizza" e beb!="água" e beb!="vinho"){
      escreva("pedido invalido")
    }
  }
}
