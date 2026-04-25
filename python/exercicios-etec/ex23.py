A = 0
for cont in range(1,4,1):
    N = int(input('Digite um número: '))
    if N % 3 == 0:
      A = A + 1
print(" {} dos números que você digitou são divisíveis por 3 ".format (A))
