//Escreva um algoritmo que use um loop "para" para encontrar o maior número em uma lista de números fornecidos pelo usuário.

programa {
  funcao inicio() {
    inteiro num
    inteiro x=0
    inteiro z
    para(inteiro a=1;a<=10;(a++))
    {
      escreva("digite um número: ")
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
      escreva("o maior número é: ",x)
  }
}
