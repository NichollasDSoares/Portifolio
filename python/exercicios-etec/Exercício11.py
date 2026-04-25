p = float(input('Dígite o preço do produto: '))
print("""Escolha a forma de pagamento:
[1] À vista em dinheiro ou cheque
[2] À vista no cartão de crédito
[3] Em duas vezes, sem juros 
[4] Em duas vezes, com juros""")
fp = int(input('De que forma você vai pagar?: '))
vd = p * 10/100
vc = p * 15/100
d = p/2
dj = d + vd
if fp == 1:
    print('O preço do produto será de R${}'.format(vd))
elif fp == 2:
    print('O preço do produto será de R${}'.format(vc))
elif fp == 3:
    print('O preço do produto será de R${}'.format(d))
elif fp == 4:
    print('O preço do produto será de R${}'.format(dj))
