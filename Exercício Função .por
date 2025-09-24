programa {
  real num1, num2, escolhaa, escolha2
  funcao inicio() {
    faca{
    limpa()

    menu()
    se(escolhaa>4){
    escreva("- Operação invalida -\nENCERANDO PROGRAMA")
    retorne
    }
    escreva("\nO 1º Número é : ")
    leia(num1)

    escreva("\nO 2º Número é : ")
    leia(num2)

    escolha(escolhaa){
      caso 1:
      escreva ("A soma dos números é : ",soma(num1,num2))
      pare
      caso 2:
      escreva ("A subtração dos números é : ",sub(num1,num2))
      pare
      caso 3:
      escreva ("A divisão dos números é : ",div(num1,num2))
      pare
      caso 4:
      escreva ("A multiplicação dos números é : ",mult(num1,num2))
      pare
    }
    escreva("\nDeseja continuar?\n1 - Sim\n2 - Não\n")
    leia(escolha2)
    }enquanto(escolha2!=2)
  }
  funcao real soma(){
  retorne num1+num2
 }

 funcao real sub(){
  retorne num1-num2
 }

 funcao real div(){
  retorne num1/num2
 }

 funcao real mult(){
  retorne num1*num2
 }

 funcao menu(){
  escreva(" - Calculadora - \nQual operação você deseja?\n1 - Soma\n2 - Subtração\n3 - Divisão\n4 - Multiplicação\n")
  leia(escolhaa)
  
 }

}