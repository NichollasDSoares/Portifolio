
H=0
TM=0
mih=0
M=0
TH=0
mim=0
meim=meih=9999999999999999999

R = 'S'
while R == 'S':
    S=int(input('''Qual seu Sexo?suas opções são:
[1]Masculino
[2]feminino'''))
    I=int(input('Digite sua idade: '))
    if S == 1:
        H = H + 1
        TH = TH + I
        if I >= mih:
            mih = I
        if I <= meih:
            meih = I
    elif S == 2:
        M = M + 1
        TM = TM + I
        if I >= mim:
            mim = I
        if I <= meim:
            meim = I
    R = str(input('''Deseja continuar a execução do programa?suas opções são:
[S] sim
[N] não''')).upper()

mh = TH / H
mm = TM / M

print('A média das idades masculinas é {} e a média das idades femininas é {}'.format(mh,mm))

print('A maior idade masculina é {} e a menor idade masculina é {}'.format(mih,meih))

print('A maior idade feminina é {} e a menor idade feminina é {}'.format(mim,meim))   