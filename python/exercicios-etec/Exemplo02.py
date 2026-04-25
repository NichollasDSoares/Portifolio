# Programa Aritmético

n1 = int(input('Dígite um número: '))
n2 = int(input('Dígite outor número: '))
s = n1 + n2
su = n1 - n2
m = n1 * n2
d = n1 / n2
di = n1 // n2
e = n1 ** n2
rd = n1 % n2

print('A soma é {}, \n O produto é {}, \n A divisão é {}, \n A subtração é {}'.format(s,m,d,su))
print('A divisão de inteiro é {}, \n A potência é {}, \n O resto da divisão é {}'.format(di,e,rd))
