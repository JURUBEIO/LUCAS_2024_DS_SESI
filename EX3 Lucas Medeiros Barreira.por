//EX3 Lucas Medeiros Barreira

programa {
  inclua biblioteca Matematica
  funcao inicio() {
    real vet[6]
    inteiro x=0
    inteiro y=0
    para(x;x<=5;x++){
      escreva("digite um numero: ")
      leia(vet[x])
    }para(y;y<=5;y++){
      escreva(Matematica.potencia(vet[y],2),"\n")
    }
  }
}
