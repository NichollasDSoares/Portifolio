mag=0
mam=9999999
npbma=0
npbme=0

for cont in range (1,91,1):
    c= int(input('Digite o número de identificação do boi: '))
    pe= float(input('Digite o peso do boi em quilos: '))
    if pe > mag:
        mag = pe
        npbma = c
    elif pe < mam:
        mam = pe
        npbme = c
    
print('O peso do boi mais gordo é o número {}: {}Kg'.format(npbma,mag))
print('O peso do boi mais magro é o número {}: {}Kg'.format(npbme,mam))