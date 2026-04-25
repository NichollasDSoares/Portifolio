a = int(input('escreva um ano qualquer:'))
ab = a % 4

if ab == 0:
    print('{} é um ano bissexto'.format(a))
else:
    print('{} não é um ano bissexto'.format(a))