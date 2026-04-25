p = int(input('Digite o primeiro termo da P.A.: '))
r = int(input('Digite a razão: '))

d = p + (10-1)* r

for cont in range (p, d + r, r):
    print('{}'.format(cont),end='->')

print('Acabou!!')




