programa {
  funcao inicio() {
    real x
    real t
    real p=0
    real o
    caracter a
    faca{
      escreva("digite valor do produto: ")
      leia(x)
      p=p+x
      escreva("exite outros produtos a serem pagos? s/n: ")
      leia(a)
    }enquanto(a=="s")
    escreva("digite o valor pago pelo cliente: ")
    leia(o)
    se(o>p){
      t=o-p
      escreva("o valor do troco é: ",t)
    }senao{
      t=p-o
      escreva("faltam pagar ",t," reais")
    }
  }
}
