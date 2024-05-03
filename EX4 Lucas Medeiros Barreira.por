//EX4 Lucas Medeiros Barreira

programa {
  funcao inicio() {
    inteiro nums[5]
    inteiro x=0
    inteiro y=0
    inteiro soma=0
    inteiro a=4
    para(x;x<=4;x++){
      escreva("digite um numero: ")
      leia(nums[x])
    }para(y;y<=4;y++){
      soma=soma+nums[y]
    }para(a;a>0;a--){
      escreva(nums[a]," + ")
      }escreva(nums[0]," = ",soma)
  }
}
