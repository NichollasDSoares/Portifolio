prod = float(input('Digite o preço do produto: '))
print('''Você irá pagar em 
[0] À vista em dinheiro
[1] À vista em cheque
[2] À vista no cartão
[3] Em até 2x no cartão
[4] 3x ou mais no cartão''')
comprador = int(input('Como você irá pagar? '))

pdc = (0.90 * prod)+prod
pca = (0.95 * prod)+prod
p2x = prod / 2
p3x = (prod / 3) + (prod * 0.20)

if comprador==0 or comprador==1:
    print('Você pagará R${} pelo produto.'.format(pdc))

elif comprador==2:
    print('Você pagará R${} pelo produto.'.format(pca))

elif comprador==3:
    print('Você pagará R${} pelo produto em cada parcela'.format(p2x))

elif comprador==4:
    print('Você pagará R${} pelo produto em cada parcela.'.format(p3x))