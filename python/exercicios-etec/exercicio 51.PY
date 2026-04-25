M = [[0,0,0,0,0], [0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
S = SC1 = SL5 = ME = 0

for linha in range(0,5):
    for coluna in range(0,5):
         M[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]:'))
print('-->'*30)
for linha in range(0,5):
    for coluna in range(0,5):
        print(f'[{M[linha][coluna]:^5}]',end=' ')
        if M[linha][coluna] % 2 == 1:
            S += M[linha][coluna]
    print()
print('-='*30)
print(f'A soma dos números impares da matriz é {S}') 

for linha in range(0,5):
    SC1 += M[linha][0]
for coluna in range(0,5):    
    SL5 += M[4][coluna]
print(f'A soma dos números da primeira coluna é: {SC1}') 
print(f'A soma dos números da quinta linha é: {SL5}')  

for linha in range(0,5):
    if linha == 0:
        ME = M[1][coluna]
    elif M[1][coluna] > maior:
        ME = M[1][coluna]
print(f'O menor valor da segunda linha é: {ME}.')  