programa {
  inclua biblioteca Util --> u
  inteiro tabuleiroBi[10][10]
  //Uma var constante que serve para resetar outras var
  const inteiro resetar = 0

  //cordenadas x e y, alem da direcao do navio
  inteiro x1, x2, y1, y2, direcao


  //função que reseta as cordenadas
  funcao resetarCord(){
    x1 = resetar
    x2 = resetar
    y1 = resetar
    y2 = resetar
  }
  //funcao para setar a direcao do navio

  //função que zera o tabuleiro Binario (0!= Navio)
  funcao zerarTabuleiroBi() {
    para(inteiro l=0;l<10;l++){
      para(inteiro c=0;c<10;c++){
        tabuleiroBi[l][c] = 0
      }
    }
  }


  funcao inicio() {
    zerarTabuleiroBi()
    
    


  }




}
