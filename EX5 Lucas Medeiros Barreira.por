//EX5 Lucas Medeiros Barreira

programa {
  funcao inicio() {
    inteiro x=1
    inteiro y
    inteiro maior=0
    inteiro menor=1
    para(x;x<=50;x++){
      escreva("digite um numero: ")
      leia(y)
      se(y>maior){
        maior=y
      }senao se(y<maior e y<menor){
        menor=y
      }
    }escreva("o maior numero é: ",maior,"\no menor numero é: ",menor)
  }
}
