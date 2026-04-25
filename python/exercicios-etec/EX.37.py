C = 1
S = 0

print('O programa encerra quando você digitar 999.')
N1 = int(input('Digite um número: '))
S = S + N1
while N1 != 999:
    N1 = int(input('Digite outro número: '))
    if N1 != 999:
        S = S + N1
        C = C + 1


print('Você digitou {} números e a soma deles é {}'.format(C, S))

print('Fim do programa')
