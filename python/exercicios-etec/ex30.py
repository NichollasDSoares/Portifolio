maif = maim = ssf = qsf = ssm = 0
meif = meim = 9999

nh = int(input('Digite o número de habitantes da região: '))

for cont in range (1,nh+1):
    print('F- Feminino \nM- Masculino' )
    s = str(input('Digite seu sexo: \n F- Feminino \n M- Masculino \n RESPOSTA:')).upper()
    if s == 'F':
        qsf =+1
        sf = float(input('qual o seu salário: '))
        ssf = ssf + sf
        idf = int(input('Digite sua idade: '))
        if idf > maif:
            maif = idf
        elif idf < meif:
            meif = idf

    elif s == 'M':
        qsm =+1
        sm = float(input('qual o seu salário: '))
        ssf = ssm + sm
        idm = int(input('Digite sua idade: '))
        if idm > maif:
            maim = idm
        elif:
            meim = idm
    else:
        print('Opção de sexo inválida.')
    
msf = ssf / qsf
msm = ssm / qsm

print('a media do salário dos homens é {} e das mulheres é {}, a maior idade  feminina é {} a menor é {} e a maior idade masculina é {} e a menor é {} '.format(msm,msf,maif,meif,maim,meim))
print('fim do programa!!!!')


