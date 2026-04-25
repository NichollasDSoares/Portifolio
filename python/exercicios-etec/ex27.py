s = 0

for cont in range (1,501,1):
    if cont % 3 == 0 and cont % 2 == 1:
        s = s + cont

print('A soma dos números que são ímpares e divisíveis por 3 de 1 a 500 é {}'.format(s))