//Escreva um algoritmo usando a estrutura de repeti��o 'para' que calcule a m�dia de N notas fornecidas pelo usu�rio e apresente o resultado.

programa {
  funcao inicio() {
    caracter y
    real not
    real u=0
    real med
    inteiro tent=0
    inteiro x=0
      para(x;x<=10;x++){
      escreva("digite nota: ")
      leia(not)
      u=u+not
      escreva("\ndeseja adicionar outra nota? s/n: ")
      leia(y)
      se(y=="s"){
        x=0
      }senao se(y=="n"){
        x=10
      }
      tent=tent+1
      }
      med=u/tent
      escreva("\na media das notas digitadas �: ",med)
  }
}
