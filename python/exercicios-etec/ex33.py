qpme=qpma=0

for cont in range(1,5,1):
    ano= int(input('Digite seu ano de nascimento: '))
    conta= ano-2022
    if conta>=18:
        qpma= qpma+1
    else:
        qpme= qpma+1

print('{} pessoas atingiram a maioridade.'.format(qpma))
print('{} pessoas ainda estão abaixo da maioridade.'.format(qpme))