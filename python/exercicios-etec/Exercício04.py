a = int(input('Dígite o valor de A: '))
b = int(input('Dígite o valor de B: '))
c1 = a + b
c2 = a * b
if a == b:
    print('Os valores A e B se somarão.\nO resultado da soma é de {}'.format(c1))
else:
    print('Os valores A e B se multiplicarão.\nO resultado da multiplicação é de {}'.format(c2))