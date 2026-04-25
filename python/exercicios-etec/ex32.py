n= int(input('Digite um número: '))
tot=0

for cont in range (1,n+1,1):
    if n % cont == 0:
        print('\033[33m',end='')
        tot = tot + 1
    else:
        print('\033[31m',end'')
        
    print('{}'.format(cont),end='')
    
print('\n\033[mO número {} foi divisível {} vezes'.format(n,tot))
if tot == 2:
    print('O número digitado é primo!!')
else:
        print('O número digitado não é primo!!')


