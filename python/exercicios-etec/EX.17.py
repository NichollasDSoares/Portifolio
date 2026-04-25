i= int(input('qual a idade do nadador?:'))
if 0 < i <= 9:
    print('o nadador é da classificação mirim')
elif 9 < i <= 14:
    print('o nadador é da classificação infantil')
elif 14 < i <=19:
    print('o nadador é da classificação junior')
elif 19 < i <=25:
    print('o nadador é da classificação sênior')
elif  i > 25:
    print('o nadador é da classificação master')
