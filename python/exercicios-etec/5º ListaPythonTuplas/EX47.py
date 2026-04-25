# Exercício 47

N = (int(input('Digite um número: ')),
       int(input('Digite outro número: ')),
       int(input('Digite outro número: ')),
       int(input('Digite um último número: ')))
print(f'Você digitou os valores {N}')
print(f'O valor 9 apareceu {N.count(9)} vezes')
if 3 in N:
    print(f'O valor 3 apareceu na {N.index(3)+1} posição.')
else:
    print('O valor 3 não foi digitado em nenhuma posição.')
print('Os valores pares digitados foram ', end='')
for M in N:
    if M % 2 == 0:
        print(M, end=' ')





