#Exercício 46 

CB = ('Palmeiras','Internacional','Flamengo','Fluminense','Corinthians','Athletico-PR','Atlético-MG','América-MG','Fortaleza','São Paulo','Botafogo','Santos','Bragantino','Goiás','Coritiba','Ceará','Cuiabá','Atlético-GO','Avaí','Juventude')

print(f'Os cinco primeiros colocados são: {CB[0:5]}')

print('-'*30)

print(f'Os quatro ultímos colocados são: {CB[16:20]} ')

print('-'*30)

print(sorted(CB))

print('-'*30)

print('A Juventude está na posição: ')
print(CB.index('Juventude') + 1)



