//EX1 Lucas Medeiros Barreira

programa {
  funcao inicio() {
    inteiro nums[5]
    inteiro par=0
    inteiro x=0
    para(par;par<=4;par++){
      escreva("digite um n�mero: ")
      leia(nums[par])
    }para(x;x<=4;x++){
      se(nums[x]%2==0){
        escreva("O valor ",nums[x]," � par.\ne esta na posi��o ",x," da lista\n")
      }senao{
        escreva("")
      }
    }
  }
}
