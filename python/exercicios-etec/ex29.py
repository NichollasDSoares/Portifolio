qiadm=qicomp=qieng=qia=qic=qie=qpeng=0

for cont in range (1,6,1):
    c=int(input('Digite seu curso: '))
    idade=int(input('Digite sua idade: '))
    
    if c == 1:
        qpeng = c+1 
        qieeng = qieng+1
        if idade>=20 and idade<=25:
            qie= qie+1
        else:
            print('Esse aluno não foi registrado pois não tem idade entre 20 e 25.')
            
    elif c == 2:
        qpcomp = c+1 
        qicomp = qicomp+1
        if idade>=20 and idade<=25:
            qic= qic+1
        else:
            print('Esse aluno não foi registrado pois não tem idade entre 20 e 25.')
    
    elif c == 3:
        qpadm = c+1
        qiadm= qiadm+1
        if idade>=20 and idade<=25:
            qia= qia+1
        else:
            print('Esse aluno não foi registrado pois não tem idade entre 20 e 25.')
        
    else: 
        print('Opção de curso inválida.')
    
meng= qpeng/qieeng
mcomp= qpcomp/qicomp
madm= qpadm/qiadm


print('                                                                              ')
print('------------------------- NÚMERO DE ALUNOS POR CURSO -------------------------')
print('A quantidade de número de alunos do curso de engenharia é {}.'.format(qpeng))
print('A quantidade de número de alunos do curso de computação é {}.'.format(qpcomp))
print('A quantidade de número de alunos do curso de administração é {}.'.format(qpadm))

print('                                                                              ')
print('                                                                              ')

print('----------- NÚMERO DE ALUNOS COM IDADE ENTRE 20 E 25 ANOS POR CURSO -----------')
print('A quantidade de número de alunos com idae entre 20 e 25 anos do curso de engenharia é {}.'.format(qie))
print('A quantidade de número de alunos com idae entre 20 e 25 anos do curso de computação é {}.'.format(qic))
print('A quantidade de número de alunos com idae entre 20 e 25 anos do curso de administração é {}.'.format(qia))

print('                                                                              ')
print('                                                                              ')

print('----------------------- CURSO COM MENOR MÉDIA DE IDADE -----------------------')
if meng < mcomp and meng < madm:
    print('O curso com menor média de idade é engenharia, contendo uma média de {}'.format(meng))
if mcomp < meng and mcomp < madm:
    print('O curso com menor média de idade é computação, contendo uma média de {}'.format(mcomp))
else:
    print('O curso com menor média de idade é administração, contendo uma média de {}'.format(madm))



    