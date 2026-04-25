# Exercício 49

    
PA = ('uma','boa','semana','a','todos')

VO = ["a", "e", "i", "o", "u"]

for M in PA:
    M = str(M).lower()
    L = []

    for LE in M:
        for I in VO:
            if LE == I:
                L.append(LE)

    print(f"{M.capitalize()}: {L} - {len(L)} vogais")
    del(L)