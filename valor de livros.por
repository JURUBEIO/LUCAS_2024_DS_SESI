programa {
  funcao inicio() {
    inteiro l
    real vt
    escreva("digite a quantia de livros comprados: ")
    leia(l)
    se(l>10){
      vt=l*8
    }senao{
      vt-l*12
    }
    escreva("\no valor a ser pago � de ",vt," reais\n")
  }
}
