#!/usr/bin/env python
# coding: utf-8

# In[15]:


N = str(input('Qual é o seu nome ?:'))
ID = int(input('Qual a sua idade ?:'))
S = str(input('''Qual o seu sexo ?responda com o número equivalente ao seu sexo:
[F]Feminino 
[M]Masculino
'''))
if ID < 25 and S =='f' or 'F':
    print('ACEITA')

else:
    print('NÃO ACEITA!')
    


# In[ ]:




