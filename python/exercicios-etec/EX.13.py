s = int(input('qual o valor do salário do funcionário?:'))
asma = (s/100)*10
sma = s + asma
asme = (s/100)*15
sme = s + asme
if s <= 1250:
    print('o valor do salário com o aumento é de R${}'.format(sma))
else:
    print('o valor do salário com o aumento é de R${}'.format(sme))