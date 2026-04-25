#Elabore um programa que data a idade de um nadador classifique-o em uma das seguintes categorias

idade = int(input('Dígite a idade do nadador:'))

if idade >= 1 and idade <= 4:
    print('A idade {} se encaixa na categoria BEBÊ.'.format(idade))

elif idade >= 5 and idade <= 7:
    print('A idade {} se encaixa na categoria INFANTIL.'.format(idade))

elif idade >= 12 and idade <= 13:
    print('A idade {} se encaixa na categoria JOVENIL.'.format(idade))

elif idade >= 14 and idade <= 17:
    print('A idade {} se encaixa na categoria JOVENIL.'.format(idade))

elif idade >= 18 and idade <= 39:
    print('A idade {} se encaixa na categoria JOVENIL.'.format(idade))

else:
    print('A idade {} se encaixa na categoria SÊNIOR.'.format(idade))