no1 = int(input('Dígite a sua 1ª nota: '))
no2 = int(input('Dígite a sua 2ª nota: '))
no3 = int(input('Dígite a sua 3ª nota: '))
me = (no1 + no2 + no3)/3
ma = (no1 + no2 * 2 + no3 * 3 + me)/7

if ma >= 90:
    print('Parabéns você tirou um A!!\nVocê foi APROVADO com média {}.'.format(ma))
elif ma >= 75 and ma < 90:
    print('Parabéns você tirou um B!!\nVocê foi APROVADO com média {}'.format(ma))
elif ma >= 60 and ma < 75:
    print('Que pena você tirou um C!!\nVocê foi REPROVADO com média {}'.format(ma))
elif ma >= 40 and ma < 60:
    print('Que pena você tirou um D!!\nVocê foi REPROVADO com média {}'.format(ma))
else:
    print('Que pena você tirou um E!!\nVocê foi REPROVADO com média {}'.format(ma))