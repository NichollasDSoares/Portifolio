N = int(input('digite um número para saber seu fatorial:'))
FA = N
F = 1
while N > 0:
    F = F * N
    N = N - 1

print('o fatorial de {} é {}'.format(FA, F))