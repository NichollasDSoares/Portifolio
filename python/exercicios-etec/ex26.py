
print('''As opções são:
[1]- Feminino
[2]- Masculino ''')
ssm = ssh = qpm = qph = 0

for cont in range(1, 7, 1):
    s = int(input('Digite seu sexo: '))

    if s == 1:
        qm = s + 1
        sm = float(input('Digite seu salário: '))
        ssm = sm + ssm
    elif s == 2:
        qh = s + 1
        sh = float(input('Digite seu salário: '))
        ssh = sh+ssh
    else:
        print('Opção inválida.')

mm = ssm / qm
mh = ssh / qh

print('A média do salário das mulheres é {}.'.format(mm))
print('A média do salário dos homens é {}.'.format(mh))