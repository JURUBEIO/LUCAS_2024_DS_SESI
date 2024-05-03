//EX2 Lucas Medeiros Barreira

programa {
  funcao inicio() {
    inteiro num1[5]
    inteiro num2[5]
    inteiro par=0
    inteiro x=0
    inteiro y=0
    para(par;par<=4;par++){
      escreva("digite um numero: ")
      leia(num1[par])
    }
    para(y;y<=4;y++){
      escreva("digite um numero: ")
      leia(num2[y])
    }
    para(x;x<=4;x++){
      se(num1[x]==num2[x]){
        escreva("os valores ",num1[x]," e ",num2[x]," são iguais e estão na posição ",x,"\n")
      }
    }
  }
}
