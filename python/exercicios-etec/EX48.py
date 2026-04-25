# Exercício 48

PR= ('Mesa',140.00,
    'Cadeira',56.00,
    'Vaso florido',90.56,
    'Jogo de copos',25.99)
print('-' * 40)
print(f'{"Listagem de Preços"}')
print('-' * 40)
for PO in range(0, len(PR)):
    if PO % 2 == 0:
        print(f'{PR[PO]:.<30}', end = '')
    else:
        print(f'R${PR[PO]: >7.2f}')