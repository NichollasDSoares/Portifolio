c= int(input('código do funcionário:'))
n= int(input('número de horas trabalhadas:'))
s=n*10
e=(n-50)*10
st=s+e
if n > 50:
    print('o salário total é de R${} e o salário excedente é deR${}'.format(st,e))
elif n <= 50:
    print('o salário total é de R${} e o salário excedente é de R$0'.format(s))