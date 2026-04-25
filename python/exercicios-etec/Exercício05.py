num = int(input('Dígite um número: '))
d = num * 2
t = num * 3
if num > 0:
    print('O número é +então ele terá seu dobro de {}.'.format(d))
elif num < 0:
    print('O número é - então ele terá o triplo de {}.'.format(t))