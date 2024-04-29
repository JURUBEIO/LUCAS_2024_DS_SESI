programa {
  funcao inicio() {
    real x
    inteiro a=1
    real d=0
    para(a;a<=10;a++){
      escreva("digite um número: ")
      leia(x)
      d=d+x
    }
    escreva("a somatoria de todos os números digitado é: ",d)
  }
}
