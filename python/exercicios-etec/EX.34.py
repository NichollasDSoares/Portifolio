s = str(input('Digite seu sexo: (as opções validas são M para masculino ou F para feminino) ')).upper()

while s != 'M' and s != 'F':

    if s != 'M' or s != 'F':
        s = str(input('O sexo digitado esta incorreto, digite novamente: ')).upper()

print('Obrigado')
