M=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
S=SC5=SL6=M1=0
for linha in range(0,6):
    for coluna in range(0,6):
        M[linha][coluna]=int(input(f'Digite um número para: [{linha},{coluna}]: '))
for linha in range(0,6):
    for coluna in range(0,6):
        print(f'[{M[linha][coluna]:^5}]',end='')
        if M[linha][coluna] % 2 == 0:
            S += M[linha][coluna]
    print()
print(f'A soma dos números pares são: {S}')
print('='*30)

for linha in range (0,6):
    SC5+=M[linha][4]
print(f'A soma da quinta coluna é {SC5}')
print('='*30)

for coluna in range (0,6):
    SL6+=M[5][coluna]
print(f'A soma da sexta linha é {SL6}')
print('='*30)

for coluna in range (0,6):
    if coluna==0:
        M1=M[coluna][0]
    elif M[coluna][0]>M1:
        M1=M[coluna][0]
print(f'O maior numero da 1 coluna é: {M1}')
