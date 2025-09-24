programa {
  funcao inicio() {
    inteiro escolhaa, escolha2
    real num1B, num2B
    faca{
    limpa()

    escolhaa = menu()
    se(escolhaa>4){
    escreva("- Operação invalida -\nENCERANDO PROGRAMA")
    retorne
    }
    escreva("\nO 1º Número é : ")
    leia(num1B)

    escreva("\nO 2º Número é : ")
    leia(num2B)

    escolha(escolhaa){
      caso 1:
      escreva ("A soma dos números é : ",soma(num1B,num2B))
      pare
      caso 2:
      escreva ("A subtração dos números é : ",sub(num1B,num2B))
      pare
      caso 3:
      escreva ("A divisão dos números é : ",div(num1B,num2B))
      pare
      caso 4:
      escreva ("A multiplicação dos números é : ",mult(num1B,num2B))
      pare
    }
    escreva("\nDeseja continuar?\n1 - Sim\n2 - Não\n")
    leia(escolha2)
    }enquanto(escolha2!=2)
  }
  funcao real soma(real num1A,real num2A){
  retorne num1A+num2A
 }

 funcao real sub(real num1A,real num2A){
  retorne num1A-num2A
 }

 funcao real div(real num1A,real num2A){
  retorne num1A/num2A
 }

 funcao real mult(real num1A,real num2A){
  retorne num1A*num2A
 }

 funcao inteiro menu(){
  inteiro escolhaa
  escreva(" - Calculadora - \nQual operação você deseja?\n1 - Soma\n2 - Subtração\n3 - Divisão\n4 - Multiplicação\n")
  leia(escolhaa)
  retorne escolhaa
 }

}