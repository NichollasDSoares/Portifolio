sompar = sterc = ssegc = mai = 0
valores = [[0,0,0],[0,0,0],[0,0,0]]
for l in range(0,3):
    for c in range(0,3):
        valores[l][c] = int(input(f"Digite um valor para [{l},{c}]: "))
for l in range(0,3):
    for c in range(0,3):
        print(f"[{valores[l][c]}]", end="")
    print()
    for l in range(0,3):
        for c in range(0,3):
            if valores[l][c] % 2 == 0:
                sompar += valores[l][c]
print(f"A soma dos valores pares da matriz é igual à {sompar}")
for l in range(0,3):
    ssegc += valores[l][1]
print(f"A soma dos valores da segunda coluna é {ssegc}")
for c in range(0,3):
    sterc += valores[c][2]
print(f"A soma dos valores da terceira coluna é {sterc}")
for l in range(0,3):
    if c == 0:
        maio = valores[l][1]
    elif valores[c][1] > mai:
        mai = valores[l][1]
    
print(f"O maior valor da segunda linha é igual à {mai}")
