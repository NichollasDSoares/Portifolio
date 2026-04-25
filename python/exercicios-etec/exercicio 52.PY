M=[[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
SI=SC3=ST=MA=0
for linha in range(0,4):
    for coluna in range(0,4):
        M[linha][coluna]=int(input(f'Digite um número para [{linha},{coluna}]: '))
for linha in range(0,4):
    for coluna in range(0,4):
        print(f'[{M[linha][coluna]:^5}]',end='')
        if M[linha][coluna] % 2 == 1:
            SI += M[linha][coluna]
    print()
print('='*30)
print(f'A soma de todos os números ímpares é: {SI}')
print('='*30)

for linha in range(0,4):
    SC3+=M[linha][2]
print(f'A soma de todos os números da 3 coluna é: {SC3}')
print('='*30)

for linha in range (0,4):
    for coluna in range(0,4):
        ST+=M[linha][coluna]
print(f'O resultado da soma dos números de toda a matriz é: {ST}')
print('='*30)

for linha in range(0,4):
    if linha ==0:
        MA=M[linha][3]
    elif M [linha][3]>MA:
        MA=M[linha][3]
print(f'O maior número da 4 coluna: {MA}')
print('='*30)


