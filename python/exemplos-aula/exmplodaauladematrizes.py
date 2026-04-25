#exemplo
carros=[
    ["Modelo","HRV"],
    ["fabricante","Honda"],
    ["Ano","2016"]
]
carros[2][1]=2019
for l,c in carros:
    print("Linha: " + l +,"|Coluna: " + str(c))
