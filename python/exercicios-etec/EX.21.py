from random import randint
from time import sleep
itens = ('pedra','papel','tesoura')

computador =randint (0,2)
print('''suas opções
[0]pedra
[1]papel
[2]tesoura''')
jogador = int(input('qual a sua jogada?:'))

if jogador == 0 or jogador == 1 or jogador == 2:
    print('jo')
    sleep(1)
    print('ken')
    sleep(1)
    print('po!!!')
    sleep(1)

    print('-='*12)
    print('computador jogou {}'.format(itens[computador]))
    print('jogador jogou {}'.format(itens[jogador]))
    print('-='*12)


    if computador == 0:
        if jogador == 0:
            print('EMPATE')
        elif jogador == 1:
            print('JOGADOR VENCEU!')
        elif jogador == 2:
            print('COMPUTADOR VENCEU!')
        else:
            print('JOGADA INVÁLIDA!!!')


    elif computador == 1:
        if jogador == 1:
            print('EMPATE')
        elif jogador == 2:
            print('JOGADOR VENCEU!')
        elif jogador == 0:
            print('COMPUTADOR VENCEU!')
        else:
            print('JOGADA INVÁLIDA!!!')

    if computador == 2:
        if jogador == 2:
            print('EMPATE')
        elif jogador == 0:
            print('JOGADOR VENCEU!')
        elif jogador == 1:
            print('COMPUTADOR VENCEU!')
        else:
            print('JOGADA INVÁLIDA!!!')
else:
    print('jogada invalida,tente novamente')

