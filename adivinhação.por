programa {
  funcao inicio() {
    inteiro p=0
    inteiro x
    cadeia u
    faca{
      para(p;p<=20;p++){
        escreva("adivinhe o n�mero: ")
        leia(x)
        se(x==p){
          u="s"
        }senao
        se(u=="s"){
          p=20
        }senao
        se(x-p<4){
          escreva("\nquase\n")
        }senao{
          escreva("\npassou longe\n")
        }
      }
    }enquanto(u!="s")
    escreva("voc� acertou o n�mero")
  }
}
