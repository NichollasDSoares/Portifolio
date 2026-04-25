p= float(input('qual o peso total?:'))
e=p-50
m=e*7
if p>50:
    print('multa de R${} pelo peso excedente'.format(m))
else:
    print('Peso do peixe de acordo com as normas estabelecidas')