programa {
  inclua biblioteca Util --> u
  inteiro tabuleiro[10][10], eixo
  real x1, y1, x2, y2
  cadeia tabuleiroNavios[10][10]
  
  funcao checagemDaPos(){
    se(x2<0){
      para(;x2<0;x2++){
        x2=x2+1
        x1=x1+1
      }
    }
    senao se(x2>10){
      para(;x2>10;x2--){
        x2=x2-1
        x1=x1-1
      }
    }
    senao se(y2<0){
      para(;y2<0;y2++){
        y2=y2+1
        y1=y1+1
      }
    }
    senao se(y2>10){
      para(;y2>10;y2--){
        y2=y2-1
        y1=y1-1
      }
    }
  }
  funcao posPortaAviao(){
    x1 = u.sorteia(0,9)
    y1 = u.sorteia(0,9)
    escreva(x1," X \n")
    escreva(y1," Y \n")
    x2 = x1
    y2 = y1
    eixo = u.sorteia(1,4)
    escreva(eixo," EIXO \n")
    escolha(eixo){
      caso 1:
      // ^
      y2 = y1 - 5
      checagemDaPos()
      para(;y2<y1;y2++){
        tabuleiroNavios[y2][x2]="P"
      }
      pare

      caso 2:
      // \/
      y2 = y1 + 5
      checagemDaPos()
      para(;x2>x1;x2--){
        tabuleiroNavios[y2][x2]="P"
      }
      pare

      caso 3:
      // >
      y2 = y1 + 5
      checagemDaPos()
      para(;y2<y1;y2++){
        tabuleiroNavios[y2][x2]="P"
      }
      pare

      caso 4:
      // <
      y2 = y1 - 5
      checagemDaPos()
      para(;y2>y1;y2--){
        tabuleiroNavios[y2][x2]="P"
      }
      pare

    }
    



  }
  funcao inicio() {
    para(inteiro l = 0;l<10;l++){
      para(inteiro c = 0;c<10;c++){
        tabuleiroNavios[l][c] = "~"
      }
    }
    posPortaAviao()
    para(inteiro l = 0;l<10;l++){
      para(inteiro c = 0;c<10;c++){
        escreva(" ",tabuleiroNavios[l][c]," ")
      }
      escreva("\n")
    }






  }
}
