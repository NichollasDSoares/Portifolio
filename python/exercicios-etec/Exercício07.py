num = int(input('Dígite um número: '))
s1 = num + 5
s2 = num + 8
if (num % 2) == 0:
    print('A soma do número par {} + 5 dá {}.'.format(num,s1))
else:
    print('A soma do número impar {} + 8 dá {}.'.format(num,s2))