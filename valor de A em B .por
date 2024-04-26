/*EX4 Lucas Medeiros 26/04/2024*/

programa {
  funcao inicio() {
    real a
    real b
    real c
    escreva("digite o valor de A: ")
    leia(a)
    escreva("\ndigite o valor de B: ")
    leia(b)
    escreva("\no valor de A é ",a)
    escreva("\no valor de B é ",b)
    c=a
    a=b
    b=c
    escreva("\no novo valor de A é ",a)
    escreva("\no novo valor de B é ",b)
  }
}
