v = int(input('qual a velocidade do carro?:'))
m = (v - 80)* 7

if v > 80:
    print('vooê irá receber uma multa de R${} por ultrapassar o limite de velocidade'.format(m))

else:
    print('o carro não ultrapassou o limite de velocidade')