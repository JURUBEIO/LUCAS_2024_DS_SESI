programa {
  inclua  biblioteca Matematica --> MAT
  funcao inicio() {
  inteiro matriz[5][5], cub[5][5], i, j, k, l, m, n
  para(i=0; i<5; i++){
    para(j=0; j<5; j++){
      escreva("Digite um valor: ")
      leia(matriz[i][j])
    }
  }
para(k=0; k<5; k++){
  para(l=0; l<5; l++){
    cub[k][l] = MAT.potencia(matriz[k][l], 3) 

  }
} 
escreva("\nOs valores dos cubos desses números são respectivamente: \n")
para(m=0; m<5; m++){
escreva("|")
para(n=0; n<5; n++){
escreva(cub[m][n])
escreva("|")
}
escreva("\n")
}

}



}
