d = int(input('qual a distância da viagem em Km?:'))
vm= d * 0.50
vc= d * 0.45
l = 201

if 200 <= d:
    print('o valor da viagem vai ser de R${}'.format(vm))


else:
    print('o valor da viagem vai ser de R${}'.format(vc))
