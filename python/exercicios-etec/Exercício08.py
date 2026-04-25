v1 = int(input('Dígite um valor: '))
v2 = int(input('Dígite outro valor: '))
v3 = int(input('Dígite mais um valor: '))
ordem = [v1, v2, v3]
ordem.sort(reverse=True)
print('A ordem dos números é {}'.format(ordem))