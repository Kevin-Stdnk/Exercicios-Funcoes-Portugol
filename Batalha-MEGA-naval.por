programa {
  inclua biblioteca Util --> u
  inteiro tabuleiro1[10][10]
  caracter tabuleiroLetras[10][10]
  caracter tabuleiroReal[10][10], tentarnovamente
  inteiro x1, x2, y1, y2, choicepos, somateste, verificacao, testeX1, testeY1, testeX2, testeY2, linha, coluna, totalnavios = 31
  const inteiro resetar = 0
  
 
  funcao definirpos(){
    x1 = resetar
    x2 = resetar
    y1 = resetar
    y2 = resetar
    choicepos = u.sorteia(1,2)
    // 1 = x ( > )
    // 2 = y ( ^ )
  }
  funcao posPortaAviao(){
    definirpos()
    se(choicepos==1){
      x1 = u.sorteia(0,5)
      y1 = u.sorteia(0,9)
      x2 = x1 + 5
      y2 = y1
      para(;x1<x2;x1++){
        tabuleiro1[x1][y2] = 5
      }
    }
    senao se(choicepos==2){
      y1 = u.sorteia(0,5)
      x1 = u.sorteia(0,9)
      y2 = y1 + 5
      x2 = x1
      
    para(;y1<y2;y1++){
        tabuleiro1[x2][y1] = 5
      }
    }

  }
  funcao posEncouracado(){
    definirpos()
    se(choicepos==1){
    faca{
      x1 = u.sorteia(0,5)
      y1 = u.sorteia(0,9)
      x2 = x1 + 4
      y2 = y1
      testedaposEncouracado()
    }enquanto(verificacao!=1)
      para(;x1<x2;x1++){
        tabuleiro1[x1][y2] = 4
      }
    }
    senao se(choicepos==2){
    faca{
      y1 = u.sorteia(0,5)
      x1 = u.sorteia(0,9)
      y2 = y1 + 4
      x2 = x1
      testedaposEncouracado()
    }enquanto(verificacao!=1)

      para(;y1<y2;y1++){
        tabuleiro1[x2][y1] = 4
      }
    }
    

  }
  funcao testedaposEncouracado(){

    somateste = 0
    verificacao = 0
    testeX1 = x1
    testeX2 = x2
    testeY1 = y1
    testeY2 = y2
    se(choicepos==1){
      para(;testeX1<testeX2+1;testeX1++){
        somateste = somateste + tabuleiro1[testeX1][testeY2]
      }
    }
    senao se(choicepos==2){
      para(;testeY1<testeY2+1;testeY1++){
        somateste = somateste + tabuleiro1[testeX2][testeY1]
      }
    }
    se(somateste!=0){
    verificacao = 0
    }
    senao{
      verificacao = 1
    }
  }
  funcao posCruzador(){
    definirpos()
    se(choicepos==1){
    faca{
      x1 = u.sorteia(0,6)
      y1 = u.sorteia(0,9)
      x2 = x1 + 3
      y2 = y1
      testedaposCruzador()
    }enquanto(verificacao!=1)
      para(;x1<x2;x1++){
        tabuleiro1[x1][y2] = 3
      }
    }
    senao se(choicepos==2){
    faca{
      y1 = u.sorteia(0,6)
      x1 = u.sorteia(0,9)
      y2 = y1 + 3
      x2 = x1
      testedaposCruzador()
      
    }enquanto(verificacao!=1)

      para(;y1<y2;y1++){
        tabuleiro1[x2][y1] = 3
      }
    }
    

  }
  funcao testedaposCruzador(){

    somateste = 0
    verificacao = 0
    testeX1 = x1
    testeX2 = x2
    testeY1 = y1
    testeY2 = y2
    se(choicepos==1){
      para(;testeX1<testeX2;testeX1++){
        somateste = somateste + tabuleiro1[testeX1][testeY2]
      }
    }
    senao se(choicepos==2){
      para(;testeY1<testeY2;testeY1++){
        somateste = somateste + tabuleiro1[testeX2][testeY1]
      }
    }
    se(somateste!=0){
    verificacao = 0
    }
    senao{
      verificacao = 1
    }

  }





  funcao posDestroier (){
    definirpos()
    se(choicepos==1){
    faca{
      x1 = u.sorteia(0,7)
      y1 = u.sorteia(0,9)
      x2 = x1 + 2
      y2 = y1
      testedaposDestroier ()
    }enquanto(verificacao!=1)
      para(;x1<x2;x1++){
        tabuleiro1[x1][y2] = 2
      }
    }
    senao se(choicepos==2){
    faca{
      y1 = u.sorteia(0,7)
      x1 = u.sorteia(0,9)
      y2 = y1 + 2
      x2 = x1
      testedaposDestroier()
      
    }enquanto(verificacao!=1)

      para(;y1<y2;y1++){
        tabuleiro1[x2][y1] = 2
      }
    }
    

  }
  funcao testedaposDestroier(){

    somateste = 0
    verificacao = 0
    testeX1 = x1
    testeX2 = x2
    testeY1 = y1
    testeY2 = y2
    se(choicepos==1){
      para(;testeX1<testeX2;testeX1++){
        somateste = somateste + tabuleiro1[testeX1][testeY2]
      }
    }
    senao se(choicepos==2){
      para(;testeY1<testeY2;testeY1++){
        somateste = somateste + tabuleiro1[testeX2][testeY1]
      }
    }
    se(somateste!=0){
    verificacao = 0
    }
    senao{
      verificacao = 1
    }
  }

 funcao posSubmarino (){
    definirpos()
    se(choicepos==1){
    faca{
      x1 = u.sorteia(0,8)
      y1 = u.sorteia(0,9)
      x2 = x1 + 1
      y2 = y1
      testedaposSubmarino ()
    }enquanto(verificacao!=1)
      para(;x1<x2;x1++){
        tabuleiro1[x1][y2] = 1
      }
    }
    senao se(choicepos==2){
    faca{
      y1 = u.sorteia(0,8)
      x1 = u.sorteia(0,9)
      y2 = y1 + 1
      x2 = x1
      testedaposSubmarino()
      
    }enquanto(verificacao!=1)

      para(;y1<y2;y1++){
        tabuleiro1[x2][y1] = 1
      }
    }
    

  }
  funcao testedaposSubmarino(){
    testeX1 = x1
    testeY1 = y1
    se(tabuleiro1[testeX1][testeY1]!=0){
    verificacao = 0
    }
    senao{
      verificacao = 1
    }
  }





 funcao definirposDef(){
    posPortaAviao()
    posEncouracado()
    posCruzador()
    posCruzador()
    posCruzador()
    posDestroier()
    posDestroier()
    posDestroier()
    posDestroier()
    posSubmarino()
    posSubmarino()
    posSubmarino()
    posSubmarino()
    posSubmarino()
 }
  
  funcao definirTabuleiros(){
    para(inteiro l=0;l<10;l++){
      para(inteiro c=0;c<10;c++){
        tabuleiroReal[l][c]= ' '
        se(tabuleiro1[l][c]==5){
          tabuleiroLetras[l][c] = 'P'
        }
        senao se(tabuleiro1[l][c]==4){
          tabuleiroLetras[l][c] = 'E'
        }
        senao se(tabuleiro1[l][c]==3){
          tabuleiroLetras[l][c] = 'C'
        }
        senao se(tabuleiro1[l][c]==2){
          tabuleiroLetras[l][c] = 'D'
        }
        senao se(tabuleiro1[l][c]==1){
          tabuleiroLetras[l][c] = 'S'
        }
        senao se(tabuleiro1[l][c]==0){
          tabuleiroLetras[l][c] = '~'
        }
      }
    }
  }
  

  funcao inicio() {
    para(inteiro l=0;l<10;l++){
      para(inteiro c=0;c<10;c++){
        tabuleiro1[l][c]=0
      }  
  }
  definirposDef()
  definirTabuleiros()
  faca{
  escreva("                  - TABULEIRO -\n      ")
  para(inteiro i = 0;i<10;i++){
    escreva(i+1,"   ")
  }
  escreva("\n")
  para(inteiro l=0;l<10;l++){
    se(l<9){
    escreva(l+1," - ")
    }
    senao{
      escreva(l+1," -")
    }
      para(inteiro c=0;c<10;c++){
      escreva("| ",tabuleiroReal[l][c]," ")
    }
    escreva("| \n")
  }
  escreva("\nQual a Linha e Coluna respectivamente que você deseja? (Linha = ^ ) (Coluna = >)","\nNavios restantes : ",totalnavios,"\nLinha = ")
  leia(linha)
  escreva("Coluna = ")
  leia(coluna)

  linha = linha - 1
  coluna = coluna - 1
  se(tabuleiro1[linha][coluna]==0){
    escreva("\nVocê errou!!")
    tabuleiroReal[linha][coluna] = tabuleiroLetras[linha][coluna]
  }
  senao{
    escreva("Você acertour!!")
    tabuleiroReal[linha][coluna] = tabuleiroLetras[linha][coluna]
    totalnavios = totalnavios - 1
  }
  escreva("\nDeseja continuar? [s/n]\n")
  leia(tentarnovamente)
  se(tentarnovamente=='n' ou tentarnovamente =='N'){
    limpa()
    escreva("JOGO FINALIZADO.")
  }
  limpa()
  }enquanto(totalnavios!=0)





}
}
