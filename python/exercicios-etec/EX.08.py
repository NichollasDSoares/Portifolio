N1= int(input('digite um número :'))
N2= int(input('digite um segundo número diferente do anterior :'))
N3= int(input('digite um terceiro número diferente dos anteriores :'))
if N1 < N2 < N3:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N1,N2,N3))
elif N1 < N3 < N2:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N1,N3,N2))
elif N2 < N1 < N3:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N2, N1, N3))
elif N2 < N3 < N1:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N2, N3, N1))
elif N3 < N1 < N2:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N3, N1, N2))
elif N3 < N2 < N1:
    print('os três valores em ordem crescente ficam {}, {} e {}'.format(N3, N2, N1))




