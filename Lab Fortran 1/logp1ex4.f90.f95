!OBJETIVO: construção de cálculo proposicional
!DATA: 15/03/2023
!INTEGRANTES: Ana Carolina Nogueira e Vitória Fernandes Pires
program logp1ex4 !nome do programa (programa fonte logp1ex4)

!O COMANDO IMPLICIT NONE é necessário para tirar a configuração de variáveis inteiras !começando com i,j,k,l,m,n
    implicit none
    
!BLOCO DE DECLARAÇÃO DE VARIÁVEIS
    logical :: a,b,c, S !variáveis lógicas
    
!BLOCO DE INICIALIZAÇÃO DAS VARIÁVEIS
    a = .true. !a = verdadeiro
    b = .true. !b = verdadeiro
    c = .false. !c = falso
    
!CÁLCULOS PROPOSICIONAIS S = ~(a ^ b ) v c
    S = .not.a.and.b.or.c
    
!SAÍDA DE DADOS PARA TELA DOS
    write(*,*)'valor logico das proposicoes simples'
    write(*,*) 'a = ', a,'b = ', b,'c = ', c
    write(*,*)'valor logico da proposicao composta'
    write(*,*)' S = ~(a ^ b ) v c ',S
    
!SAÍDA DE DADOS PARA ARQUIVO
    open(10,file='ex4.dat',status='replace') !abertura de arquivo ex4.dat
        write(10,*)'valor logico das proposicoes simples'
        write(10,*) 'a = ', a,'b = ', b,'c = ', c
        write(10,*)'valor logico da proposicao composta'
        write(10,*) 'S = ~(a ^ b ) v c',S
    close(10) !fechamento do arquivo de saída
    
!FINALIZAÇÃO DO PROGRAMA
end program logp1ex4 !a instrução program logp1ex4 não é necessária