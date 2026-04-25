al = float(input('Dígite a sua altura: '))
se = str(input('Dígite seu sexo: '))
h = (72.7 * al) - 58
m = (62.1 * al) - 44.7
if se == 'masculino':
    print('Seu peso é {}'.format(h))
else:
    print('Seu peso é {}'.format(m))