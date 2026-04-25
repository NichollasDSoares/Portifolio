
si = 0
qp = 0

for cont in range (1,21,1):
    n = str(input('Digite seu nome: '))
    i = int(input('Digite sua idade: '))
    if i > 0:
        si = i+si
        qp = qp + 1
    else:
        print('Opção inválida.')

mdi = si / qp

print('A média das idades é: {}'.format(mdi))
