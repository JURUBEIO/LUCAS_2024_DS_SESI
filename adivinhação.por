programa {
  funcao inicio() {
    inteiro p=0
    inteiro x
    cadeia u
    faca{
      para(p;p<=20;p++){
        escreva("adivinhe o número: ")
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
    escreva("você acertou o número")
  }
}
