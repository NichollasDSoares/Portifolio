R = 'S'
MA = 0
Q = 0
S = 0
ME = 99999

while R != 'N':
    Q = Q + 1
    I = int(input('Qual a sua idade:'))
    PE = int(input('Qual o seu peso:'))
    if PE > MA:
        MA = p
    if PE < ME:
        ME = p
    S = S + I
    R = str(input('''Voce quer continuar?suas opções são:
[S] sim
[N] não''')).upper()
    
MI = S / Q

print('O maior peso é {} e o menor peso é {}'.format(MA,ME))

print('A média das idades é {} '.format(MI))