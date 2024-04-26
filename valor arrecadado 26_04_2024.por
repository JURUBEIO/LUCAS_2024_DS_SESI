/*EX1 Lucas Medeiros 26/04/2024*/

programa {
  funcao inicio() {
    real i1
    real i2
    real i3
    real i4
    real vt
    inteiro p
    escreva("\nDigite a quantia de pessoas: ")
    leia(p)
    i1=p*0.10
    i2=p*0.50
    i3=p*0.30
    i4=i1
    vt=(i1*5)+(i2*10)+(i3*20)+(i4*30)
    escreva("\nO valor total arrecadado foi de: ",vt)
  }
}
