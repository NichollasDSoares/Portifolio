vc = int(input('qual o valor da casa?:'))
sf = int(input('qual o seu salário?:'))
an = int(input('em quantos anos você pretende pagar?:'))
pm = an * 12
pmc = vc / pm
ex = (sf/100)*30
if pmc > ex:
    print('empréstimo negado')
else:
    print('empréstimo aprovado!!!')