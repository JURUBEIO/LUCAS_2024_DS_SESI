//Fa�a um algoritmo que receba um n�mero e mostre uma mensagem caso este n�mero seja maior que 10.
//*

programa {
  funcao inicio() {
  caracter y
  real x
  faca{
    escreva("Digite o valor: ")
    leia(x)
    se(x>10){
      escreva("o valor digitado � maior que 10.")
    }senao se(x==10){
      escreva("o valor digitado � igual a 10.")
    }
    senao{
      escreva("o valor digitado � menor que 10.")
    }
    escreva("\ndeseja digitar um outro valor? s/n: ")
    leia(y)
  }enquanto (y=="s")
  }
}
