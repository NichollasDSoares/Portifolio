
ano = int(input('em que ano você nasceu?:'))
ano2 = int(input('em que ano nós estamos?:'))

anno = ano2 - ano
f = 18 - anno
a = anno - 18
if anno > 18:
    print('você está atrasado em {} para se alistar!'.format(a))
elif anno < 18:
    print('falta {} para você se alistar!'.format(f))
else:
    print('você está na idade certa para se alistar!')



