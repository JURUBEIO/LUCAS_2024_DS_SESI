programa {
  funcao inicio() {
    real valor
    real y=0
    real z
    para(real x=1;x<=8;(x++))
    {
      escreva("digite valor do produto: ")
      leia(valor)
      z=(valor+y)
      y=z
    }
    escreva(y)
  }
}
