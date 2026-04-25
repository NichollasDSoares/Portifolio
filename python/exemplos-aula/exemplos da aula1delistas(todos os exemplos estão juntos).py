
#EXEMPLO1

num = [2,5,9,1]
print(num)


#EXEMPLO2

num = [2,5,9,1]
num[2] = 3

print(num)


#EXEMPLO3

num = [2,5,9,1]
num[2] = 3
num.append(7)

print(num)


#EXEMPLO4

num = [2,5,9,1]
num[2] = 3
num.append(7)
num.sort(reverse=True)

print(num)


#EXEMPLO5

num = [2,5,9,1]
num[2] = 3
num.append(7)
num.sort(reverse=True)

print(num)
print(f"Essa lista tem {len(num)} elementos")


#EXEMPLO6

num = [2,5,9,1]
num[2] = 3
num.append(7)
num.sort(reverse=True)
num.insert(2,0)

print(num)
print(f"Essa lista tem {len(num)} elementos")


#EXEMPLO7

num = [2,5,9,1]
num[2] = 3
num.append(7)
num.sort(reverse=True)
num.insert(2,0)
num.pop(2)

print(num)
print(f"Essa lista tem {len(num)} elementos")


#EXEMPLO8

num = [2,5,9,1]
num[2] = 3
num.append(7)
num.sort(reverse=True)
num.insert(2,2)
if 4 in num:
    num.remove(4)
else:
    print("Não achei o número 4")
    
print(num)
print(f"Essa lista tem {len(num)} elementos")


#EXEMPLO9

valores = []
valores.append(5)
valores.append(9)
valores.append(4)
for v in valores:
    print(f"{v}...", end="")
    
    
#EXEMPLO10

valores = []
valores.append(5)
valores.append(9)
valores.append(4)
for c,v in enumerate(valores):
    print(f"na posição {c} encontrei o valor {v}!")
    
print("Cheguei ao final da lista")


#EXEMPLO11

valores = list()
for cont in range(0,5):
    valores.append(int(input("Digite um valor")))
for c,v in enumerate(valores):
    print(f"na posição {c} encontrei o valor {v}!")
    
print("Cheguei ao final da lista")


#EXEMPLO12

a = [2,3,4,7]
b = a[:]
b[2] = 8

print(f"lista a: {a}")
print(f"lista b: {b}")
