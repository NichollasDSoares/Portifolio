#!/usr/bin/env python
# coding: utf-8

# In[2]:



NH=0
NF=0
SM=0
SF=0
for cont in range(1, 11, 1):
    
    print('''digite uma das opções abaixo:
      [1]Feminino
      [2]Masculino''')
    se=int(input('Qual o seu sexo?:'))
    sa=int(input('qual o seu salário?:'))
    if se == 1:
        SF = SF + sa
        NF= NF + 1
    elif se == 2:
        SM = SM + sa
        NH = NH + 1
    else:
        print('resposta inválida!!!')
MSF= SF / NF
MSM= SM / NH

print('a media do salário das mulheres é de {}'.format(MSF))
print('a média do salário dos homens é de {}'.format(MSM))


# In[14]:



SNI=0
for cont in range (1,501,1):
    if cont % 3 == 0 and cont % 2 != 0:
        SNI= cont + SNI
    
print('a soma é {}'.format(SNI))


# In[ ]:




