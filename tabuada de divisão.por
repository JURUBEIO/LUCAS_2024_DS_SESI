programa {
  funcao inicio() {
    inteiro x
    inteiro p=1
    inteiro l=0
    escreva("digite um numero: ")
      leia(x)
    para(p;p<=10;p++){
      l=x*p
      escreva(l,"/",x," ",l/x,"\n")
    }
  }
}
