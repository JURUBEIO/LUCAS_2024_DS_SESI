programa {
  inclua biblioteca Util
  funcao inicio() {
     logico mmm=falso
    inteiro alun
    inteiro l
    inteiro aaa
    inteiro bbb
    inteiro x=0
    inteiro y=0
    inteiro a=0
    inteiro s=0
    inteiro b
    inteiro ppp=0
    inteiro m
    inteiro mm=0
    real pn1
    real pn2
    real pn3
    faca{
      escreva("o que deseja fazer ?\n1--inserir nota notas.\n2--ver notas.\n3--encerrar\n")
      leia(b)
      escolha(b){
        caso 1:
          escreva("qual o tipo de média que deseja?\n1--Aritmética\n2--Ponderada")
          leia(m)
          ppp++
          escreva("digite a quantia de alunos: ")
          leia(alun)
          real n1[alun]
          real n2[alun]
          real n3[alun]
          real med[alun]
          para(x;x<alun;x++)
          {
            escreva("digite a primeira nota do ",x+1,"° aluno: ")
            leia(n1[x])
          }
          para(y;y<alun;y++)
          {
            escreva("digite a segunda nota do ",y+1,"° aluno: ")
            leia(n2[y])
          }
          para(a;a<alun;a++)
          {
            escreva("digite a terceira nota do ",a+1,"° aluno: ")
            leia(n3[a])
          }
          se(m==1)
          {
            para(mm;mm<alun;m++)
            {
              med[mm]=(n1[mm]+n2[mm]+n3[mm])/3
            }
          }
          senao se(m==2)
          {
            escreva("digite o peso da 1° nota: ")
            leia(pn1)
            escreva("digite o peso da 2° nota: ")
            leia(pn2)
            escreva("digite o peso da 3° nota: ")
            leia(pn3)
            para(mm;mm<alun;mm++)
            {
              med[mm]=((n1[mm]*pn1)+(n2[mm]*pn2)+(n3[mm]*pn3))/pn1+pn2+pn3
            }
          }
          mmm=verdadeiro
          pare
          caso 2:
          ppp++
          se(mmm==falso)
          {
            escreva("media não calculada")
          }
          senao
          {
            para(s;s<alun;s++)
            {
              escreva(s+1,"° media = ",med[s],"\n")
            }
          }
          caso 3:
          ppp++
          pare
      }
      escreva("deseja continua\n 1--sim\n2--não\n")
      leia(l)
      se(l==1)
      {
        ppp=0
      }
    }enquanto(ppp==0)
  }
}
