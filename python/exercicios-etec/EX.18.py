n1= int(input('quanto mede o primeiro lado?:'))
n2 = int(input('quanto mede o segundo lado?:'))
n3 = int(input('quanto mede o terceiro lado?:'))
if n1 == n2 == n3:
    print('é um triângulo equilátero')
elif n1 == n3 == n2:
    print('é um triângulo equilátero')
elif n2 == n1 == n3:
    print('é um triângulo equilátero')
elif n2 == n3 == n1:
    print('é um triângulo equilátero')
elif n3 == n1 == n2:
    print('é um triângulo equilátero')
elif n3 == n2 == n1:
    print('é um triângulo equilátero')
elif n1 > n2 ==  n3:
    print('é um triângulo isóceles')
elif n1 > n3 ==  n2:
    print('é um triângulo isóceles')
elif n2 > n1 ==  n3:
    print('é um triângulo isóceles')
elif n2 > n3 ==  n1:
    print('é um triângulo isóceles')
elif n3 > n1 ==  n2:
    print('é um triângulo isóceles')
elif n3 > n2 ==  n1:
    print('é um triângulo isóceles')
elif n1 > n2 > n3:
    print('é um triângulo escaleno')
elif n1 > n3 > n2:
    print('é um triângulo escaleno')
elif n2 > n1 > n3:
    print('é um triângulo escaleno')
elif n2 > n3 > n1:
    print('é um triângulo escaleno')
elif n3 > n1 > n2:
    print('é um triângulo escaleno')
elif n3 > n2 > n1:
    print('é um triângulo escaleno')

