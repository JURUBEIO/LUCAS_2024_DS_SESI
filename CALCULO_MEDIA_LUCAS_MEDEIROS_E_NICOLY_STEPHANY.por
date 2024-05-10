programa {
  inclua biblioteca Util
  funcao inicio() {
     logico mmm=falso
    inteiro alun
    inteiro xx
    inteiro l
    inteiro aaa
    inteiro bbb
    inteiro x=0
    inteiro s=0
    inteiro b
    inteiro m
    inteiro mm=0
    inteiro y=0
    real pn1
    real pn2
    real pn3
    logico parada=verdadeiro
    inteiro f
    inteiro pipipopo
    inteiro pipipi

    faca{
      escreva("O que deseja fazer ?\n1-Inserir notas\n2-Ver notas\n3-Alterar notas\n4-Encerrar\n")
      leia(b)
      escolha(b){
        caso 1:
          escreva("\nQual o tipo de média que deseja?\n1-Aritmética\n2-Ponderada\n")
          leia(m)
          escreva("\nDigite a quantia de alunos: ")
          leia(alun)
          real n1[alun]
          real n2[alun]
          real n3[alun]
          real med[alun]
          para(x; x<alun; x++)
          {
            escreva("Digite a primeira nota do ",x+1,"° aluno: ")
            leia(n1[x])
            escreva("Digite a segunda nota do ",x+1,"° aluno: ")
            leia(n2[x])
            escreva("Digite a terceira nota do ",x+1,"° aluno: ")
            leia(n3[x])
            escreva("\n")
          }
          escolha(m)
          {
            caso 1:
            para(inteiro ll=0; ll<alun; ll++){
              med[ll]=(n1[ll]+n2[ll]+n3[ll])/3
            }
            pare
            caso 2:
            escreva("Digite o peso da 1° nota: ")
            leia(pn1)
            escreva("Digite o peso da 2° nota: ")
            leia(pn2)
            escreva("Digite o peso da 3° nota: ")
            leia(pn3)
            para(inteiro ll=0; ll<alun; ll++){
              med[ll]=((n1[ll]*pn1)+(n2[ll]*pn2)+(n3[ll]*pn3))/pn1+pn2+pn3
            }
          }
          mmm=verdadeiro
          pare
          caso 2:
          se(mmm==falso)
          {
            escreva("Média não calculada")
          }
          senao
          {
            para(s;s<alun;s++)
            {
              escreva(s+1,"° media = ",med[s],"\n")
            }
            pare
          }
          caso 3:
          escreva(" _________________________________________ \n")
          escreva("|1° nota|        |2° nota|        |3° nota|\n")
          para(inteiro imprim=0; imprim<alun; imprim++)
          {
            escreva("|___",n1[imprim],"___|","        ","|___",n2[imprim],"___|","        ","|___",n3[imprim],"___|","\n")
          }
          escreva("|_________________________________________|\n")
          escreva("Digite a posição da nota que deseja alterar: ")
          leia(f)
          escreva(" ________________ \n")
          se(f==1)
          {
          para(inteiro impri2=0;impri2<alun;impri2++)
          {
            escreva(" ",impri2+1,"° aluno: ",n1[impri2])
            escreva("\n--------------\n")
          }
          escreva("Digite qual aluno deseja modificar a nota: ")
          leia(pipipopo)
          se(pipipopo<=alun)
          {
            pipipi=pipipopo-1
            escreva("Digite a nova nota: ")
            leia(n1[pipipi])
          }
          }
          senao se(f==2)
          {
            para(inteiro impri2=0;impri2<alun;impri2++)
          {
            escreva(impri2+1,"° aluno: ",n2[impri2])
            escreva("----------")
          }
          escreva("Digite qual aluno deseja modificar a nota: ")
          leia(pipipopo)
          se(pipipopo<=alun)
          {
            pipipi=pipipopo-1
            escreva("Digite a nova nota: ")
            leia(n2[pipipi])
          }
          escreva("Digite qual aluno deseja alterar: ")
          }
          senao se(f==3)
          {
            para(inteiro impri2=0;impri2<alun;impri2++)
          {
            escreva(impri2+1,"° aluno: ",n3[impri2])
            escreva("----------")
          }
          escreva("Digite qual aluno deseja modificar a nota: ")
          leia(pipipopo)
          se(pipipopo<=alun)
          {
            pipipi=pipipopo-1
            escreva("Digite a nova nota: ")
            leia(n3[pipipi])
          }
          }
           escreva("\nQual o tipo de média que deseja?\n1-Aritmética\n2-Ponderada\n")
          leia(m)
          escolha(m)
          {
            caso 1:
            para(inteiro ll=0; ll<alun; ll++){
              med[ll]=(n1[ll]+n2[ll]+n3[ll])/3
            }
            pare
            caso 2:
            escreva("Digite o peso da 1° nota: ")
            leia(pn1)
            escreva("Digite o peso da 2° nota: ")
            leia(pn2)
            escreva("Digite o peso da 3° nota: ")
            leia(pn3)
            para(inteiro ll=0; ll<alun; ll++){
              med[ll]=((n1[ll]*pn1)+(n2[ll]*pn2)+(n3[ll]*pn3))/pn1+pn2+pn3
            }
          }

          pare
          caso 4:
          para(y;y<=8;y++){
            Util.aguarde(850)
            escreva("[]")
            parada=falso
          }
      }
      se(parada==falso)
      {
        pare
      }
      senao se(parada==verdadeiro)
      {
      escreva("\nDeseja continuar\n 1-Sim\n2-Não\n")
      leia(l)
      escreva("\n")
      }
    }enquanto(l==1)
  }
}