lanche = ('Sorvete', 'Água', 'Hambúrguer', 'Bolacha','Batata Frita')
#Tuplas são IMUTAVEIS (não podem ser alteradas dps, só ali em cima)

#len - conta quantos elementos tem dentro da tupla:

#print (len(lanche))


# 2 jeitos pra usar FOR:

for comida in lanche:
    print(f'Eu vou comer {comida}')

#ou

for c in range (0, len(lanche)):
    print (f'Eu vou comer {lanche[c]}')

# Pra mostrar a posição

for c in range(0, len(lanche)):
    print(f'Eu vou comer {lanche[c]} na posição {c}')

#ou

for pos, comida in enumerate(lanche):
    print (f'Eu vou comer {comida} - Posição {pos}')


print (sorted(lanche)) #deixa ordenado
print(lanche)
print('Comi para caramba !')