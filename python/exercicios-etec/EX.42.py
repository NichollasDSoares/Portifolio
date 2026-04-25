
R = 'S'
QT = 0

while R == 'S' and R != 'N':
    QT = QT + 1
    R = str(input('''Quer continuar?suas opções são:
[S]sim
[N]não''').upper()
    S = str(input('''Qual o seu sexo?
M - masculino
F - feminino''')).upper()
    if S == 'M':
        QH = QH + 1
    elif S == 'F':
        QM = QM + 1
    
MH = QT / QH
MM = QT / QM


print('A quantidade de homens é {} e a quantidade de mulheres é {}'.format(QH,QM))

print('A média de homens é {} e a média de mulheres é {}'.format(MH,MM))
