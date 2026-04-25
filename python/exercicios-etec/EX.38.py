Q = 1
S = 0
N = int(input('Digite um número: '))
D = str(input('Você deseja continuar? digite "S" para sim / e qualquer outra tecla para não: ')).upper()
S = S + N
MA = N
ME = N

while D == 'S':
    N = int(input('Digite outro número: '))
    D = str(input('Você deseja continuar? digite "S" para sim / e qualquer outra tecla para não: ')).upper()

    S = S + N
    Q = Q + 1
    if N > MA:
        MA = N
    elif N < ME:
        ME = N




MED = S / Q
print('a média de todos os valores é {}, o maior valor foi {} e o menor valor foi {}.'.format(MED,MA,ME))
