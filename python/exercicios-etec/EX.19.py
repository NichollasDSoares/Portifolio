p= int(input('qual o seu peso?:'))
a= float(input('qual a sua altura?:'))
aa=a*a
IMC=p/aa
if IMC < 18.5:
    print('abaixo do peso')
elif 18.5 <= IMC < 26:
    print('peso ideal')
elif 24 < IMC < 31:
    print('sobrepeso')
elif 29 < IMC < 41:
    print('obesidade')
elif IMC > 40:
    print('obesidade mórbida')



