//Escreva um algoritmo que use um loop "para" para encontrar o maior n�mero em uma lista de n�meros fornecidos pelo usu�rio.

programa {
  funcao inicio() {
    inteiro num
    inteiro x=0
    inteiro z
    para(inteiro a=1;a<=10;(a++))
    {
      escreva("digite um n�mero: ")
      leia(num)
      se(x>num)
      {
        z=num
      }
      senao
      {
        x=num
      }
       
      }
      escreva("o maior n�mero �: ",x)
  }
}
