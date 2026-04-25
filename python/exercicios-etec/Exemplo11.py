#!/usr/bin/env python
# coding: utf-8

# In[27]:


m = int(input('Quantos números você quer somar?: '))
s = 0
for cont in range (1, m+1, 1):
    c = int(input('Dígite um número: '))
    s = c + s
print('A soma dos números é {}'.format(s))

