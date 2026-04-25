S = 6
Q1 = 0
Q2 = 0
Q3 = 0
Q4 = 0
while S != 0 :
    S = int(input(''' Digite o número da sala :
    1 - Thor: Amor e Trovão
    2 - Avengers
    3 - O outro Eu
    4 - Minions 2
    0 - Sair
    '''))
    
    if S == 1 :
        Q1 = Q1 + 1
    if S == 2 :
        Q2 = Q2 + 1
    if S == 3 :
        Q3 = Q3 + 1
    if S == 4 :
        Q4 = Q4 + 1


SO = Q1 + Q2 + Q3 + Q4
PORC1 = Q1 / st * 100
PORC2 = Q2 / st * 100
PORC3 = Q3 / st * 100
PORC4 = Q4 / st * 100
MG = SO / 4

print('''A quantidade de pessoas que irá assistir um filme em cada sala é respectivamente :
sala 1 com {} pessoas 
sala 2 com {} pessoas
sala 3 com {} pessoas
sala 4 com {} pessoas'''.format(Q1,Q2,Q3,Q4))
print('A média geral das pessoas que frequentaram o cinema naquele momento é {} '.format(MG))
print('''A porcentagem das pessoas em cada sala é :
sala 1 com {}% 
sala 2 com {}% 
sala 3 com {}%
sala 4 com {}%'''.format(PORC1,PORC2,PORC3,PORC4))