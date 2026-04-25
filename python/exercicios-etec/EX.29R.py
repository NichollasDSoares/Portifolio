#!/usr/bin/env python
# coding: utf-8

# In[1]:


v=float(input('Qual é o valor do produto ?:'))
vlm=v + (v * 0.45)
vlr=v + (v * 0.30)
if v < 20 :
    print('o valor da venda vai ser de {}'.format(vlm))
else:
    print('o valor da venda vai ser de {}'.format(vlr))

