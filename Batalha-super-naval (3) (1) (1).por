programa {
  inclua biblioteca Util --> u
  inteiro tabuleiro1[10][10]
  inteiro x1, x2, y1, y2, choicepos, somateste, verificacao, testeX1, testeY1, testeX2, testeY2
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








  funcao inicio() {
    para(inteiro l=0;l<10;l++){
      para(inteiro c=0;c<10;c++){
        tabuleiro1[l][c]=0
      }  
  }
    posPortaAviao()
    posEncouracado()
    posEncouracado()
    posCruzador()
    posCruzador()
    posCruzador()
    posDestroier()
    posDestroier()
    posDestroier()
    posSubmarino()
    posSubmarino()
    posSubmarino()
    posSubmarino()
    posSubmarino()
   para(inteiro l=0;l<10;l++){
      para(inteiro c=0;c<10;c++){
        escreva(" ",tabuleiro1[l][c]," ")
      }
      escreva("\n")
    }
}
}
