AL = float(input('Dígite a sua altura: '))
SEX = str(input('Dígite seu sexo: '))
M = (72.7 * al) - 58
F = (62.1 * al) - 44.7
if se == 'MASCULINO':
    print('Seu peso é {}'.format(M))
else:
    print('Seu peso é {}'.format(F))