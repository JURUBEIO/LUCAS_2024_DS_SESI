//Descreva um algoritmo que use um loop "enquanto" para encontrar o menor n�mero primo maior que um n�mero fornecido.

programa {
  funcao inicio() {
    inteiro x
    inteiro div=0
    inteiro val=1
    inteiro y=1
    escreva("digite um numero: ")
    leia(x)
    se(x>0){
      enquanto(val<=x){
        para(y;y<=x;y++){
        se(x%val==0){
          div++
        }
        val++}
        se(div==2){
          escreva("o numero digitado � primo.\n")
        }senao{
          escreva("o numero digitado n�o � primo.\n")
        }
      }
    }senao{
      escreva("Numero invalido\n")
    }
  }
}
