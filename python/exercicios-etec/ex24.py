#exercício 24

sp=qp=sn=qn=0

for cont in range (1,41,1):
    n = float(input('Digite um número: '))
    if n > 0:
        sp = n + sp
        qp = qp + 1
    else:
        sn = n+sn
        qn = qn+1
print('dentre os números que você digitou há {} negativos .'.format(qn))
mp = sp / qp
mn = sn + qn

print('A média dos números positivos é {}'.format(mp))
print('A média dos números negativos é {}'.format(mn))