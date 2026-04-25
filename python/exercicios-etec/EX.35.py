R = 0
OP = 0
N1 = float(input('Digite digite o primeiro valor:'))

N2 = float(input('Digite digite o segundo valor:'))

while OP != 6:

    OP = int(input('''o que você deseja fazer? : 
    [1] - Somar 
    [2] - Multiplicar 
    [3] - Subtrair 
    [4] - Maior 
    [5] - Novos Números 
    [6] - Sair do Programa 

    '''))

    if OP == 1:

        R = N1 + N2

        print ('o resultado da soma é {}'.format(R))

    elif OP == 2:

        R = N1 * N2

        print('o resultado da multiplicação é {}'.format(R))

    elif OP == 3:

        R = N1 - N2

        print('o resultado da subtração é {}'.format(R))

    elif OP == 4:

        if N1 > N2:

            print('{} é maior que {}'.format(N1,N2))

        elif N1 < N2:

            print('{} é maior que {}'.format(N2,N1))

        else:
            print('{} e {} tem o mesmo valor'.format(N1, N2))

    elif OP == 5:

        N1 = float(input('Digite digite o primeiro valor:'))

        N2 = float(input('Digite digite o segundo valor:'))

    else:
        print('opção invalida')


print('Programa encerrado')
