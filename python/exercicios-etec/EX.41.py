qp=0
qf=0
qt=0
qpt=0
qb=0
qn=0
pv=0
c = 1

while c != 00:
    pv = pv + 1
    v=int(input('''Em qual candidato você quer votar?
10 - Pernalonga
30 - Frajola 
42 - Taz
55 - Patolino
1 - Branco
00 - Sair da Eleição
R: '''))
    if v == 10:
        qp = qp + 1
    elif v == 30:
        qf = qf + 1
    elif v == 42:
        qt = qt + 1
    elif v == 55:
        qpt = qpt + 1
    elif v == 1:
        qb = qb + 1
    else:
        qn = qn + 1
    c = int(input('Para sair digite 00 e para continuar digite qualuqer outro número: '))    

if qp > qf and qp > qt and qp > qpt and qp > qb and qp > qn:
    print('Pernalonga venceu essa eleição!!!')
elif qf > qp and qf > qt and qf > qpt and qf > qb and qf > qn:
    print('Frajola venceu essa eleição!!!')
elif qt > qp and qt > qf and qt > qpt and qt > qb and qt > qn:
    print('Taz venceu essa eleição!!!')
elif qpt > qp and qpt > qf and qpt > qt and qpt > qb and qpt > qn:
    print('Patolino venceu essa eleição!!!')
elif qb > qp and qb > qf and qb > qt and qb > qpt and qb > qn:
    print('A maioria dos votos foi Branco então essa eleição não teve vencedor')
elif qn > qp and qn > qf and qn > qt and qn > qpt and qn > qb:
    print('a maioria dos votos foi Nulo então essa eleição não teve vencedor')
else:
    print('Houve um empate')
print('-------------------------------------------------')
if qp > qf and qp > qt and qp > qpt and qp > qb and qp > qn:
    print('Pernalonga venceu e teve um total de {} votos'.format(qp))
elif qf > qp and qf > qt and qf > qpt and qf > qb and qf > qn:
    print('Frajola venceu e teve um total de {} votos'.format(qf))
elif qt > qp and qt > qf and qt > qpt and qt > qb and qt > qn:
    print('Taz venceu e teve um total de {} votos'.format(qt))
elif qpt > qp and qpt > qf and qpt > qt and qpt > qb and qpt > qn:
    print('Patolino venceu e teve um total de {} votos'.format(qpt))
elif qb > qp and qb > qf and qb > qt and qb > qpt and qb > qn:
    print('A maioria dos votos foi Branco e a quantidade foi {}'.format (qb))
elif qn > qp and qn > qf and qn > qt and qn > qpt and qn > qb:
    print('a maioria dos votos foi Nulo e a qunatidade foi {}'.format(qn))
else:
    print('Houve um empate')

mp = pv / qp  
mf = pv / qf 
mt = pv / qt 
mpt = pv / qpt 
mb = pv / qb  
mn = pv / qn  
print('-------------------------------------------------')

print('''A média de votos foi:
Pernalonga {}
Frajola {}
Taz {}
Patolino {}
Branco {}
Nulo {}'''.format(mp,mf,mt,mpt,mb,mn))

print('-------------------------------------------------')
pp = (qp / 100) * pv
pf = (qf / 100) * pv
pt = (qt / 100) * pv
ppt = (qpt / 100) * pv
pb = (qb / 100) * pv
pn = (qn / 100) * pv

print('''A porcentagem de votos foi:
Pernalonga {}
Frajola {}
Taz {}
Patolino {}
Branco {}
Nulo {}'''.format(pp,pf,pt,ppt,pb,pn))