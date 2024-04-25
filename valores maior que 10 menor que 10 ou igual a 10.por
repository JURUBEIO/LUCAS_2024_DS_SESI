//Faça um algoritmo que receba um número e mostre uma mensagem caso este número seja maior que 10.
//*

programa {
  funcao inicio() {
  caracter y
  real x
  faca{
    escreva("Digite o valor: ")
    leia(x)
    se(x>10){
      escreva("o valor digitado é maior que 10.")
    }senao se(x==10){
      escreva("o valor digitado é igual a 10.")
    }
    senao{
      escreva("o valor digitado é menor que 10.")
    }
    escreva("\ndeseja digitar um outro valor? s/n: ")
    leia(y)
  }enquanto (y=="s")
  }
}
