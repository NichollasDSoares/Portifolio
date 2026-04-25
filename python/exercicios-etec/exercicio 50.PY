M = [[0,0,0], [0,0,0],[0,0,0]]
S = SC2 = SC1 = MA = 0

for linha in range(0,3):
    for coluna in range(0,3):
        M[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]:'))
print('-->'*30)

for linha in range(0,3):
    for coluna in range(0,3):
        print(f'[{M[linha][coluna]:^5}]',end=' ')
        if M[linha][coluna] % 2 == 0:
            S += M[linha][coluna]
    print() 
print('-='*30)
print(f'A soma dos números pares da matriz é {S}')

for linha in range(0,3):
    SC1 += M[linha][1]
    SC2 += M[linha][2]
print(f'A soma dos números da segunda coluna é: {SC1}') 
print(f'A soma dos números da terceira coluna é: {SC2}')  

for coluna in range(0,3):
    if coluna == 0:
        MA = M[1][coluna]
    elif M[1][coluna] > MA:
        MA = M[1][coluna]
print(f'O maior valor da segunda linha é: {MA}.')        
