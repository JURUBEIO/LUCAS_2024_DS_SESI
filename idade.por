programa {
  funcao inicio() {
    inteiro idade
    inteiro x=0
    inteiro z
    para(inteiro a=1;a<=10;(a++))
    {
      escreva("digite sua idade: ")
      leia(idade)
      se(x>idade)
      {
        z=idade
      }
      senao
      {
        x=idade
      }
       
      }
      escreva("a maior idade é: ",x)
    }
  }