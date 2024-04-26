/*EX8 Lucas Medeiros 26/04/2024*/

programa {
  funcao inicio() {
    caracter s
    cadeia nom
    inteiro ida
    real salaf
    real salal
    escreva("Digite seu nome: ")
    leia(nom)
    escreva("\ndigite sua idade: ")
    leia(ida)
    escreva("\ndigite seu sexo F/M: ")
    leia(s)
    escreva("\ndigite seu salario fixo: ")
    leia(salaf)
    se(s=="M" e ida>=30){
      salal=salaf+100
    }senao se(s=="M" e ida<30){
      salal=salaf+50
    }senao se(s=="F" e ida>=30){
      salal=salaf+200
    }senao se(s=="F" e ida<30){
      salal=salaf+80
    }
    escreva(nom," R$",salal)
  }
}
