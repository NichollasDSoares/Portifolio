# Estrutura Condicional

nome = str(input('Dígite o nome do aluno: '))
nota1 = float(input('Dígite a primeira nota: '))
nota2 = float(input('Dígite a segunda nota: '))

media = (nota1 + nota2) / 2

if media >= 7:
    print('O aluno {} foi \033[34maprovado\033[m com média {}.'.format(nome,media))
elif media >= 4 and media <7:
    print('O aluno {} está de \033[33mrecuperação\033[m com média {}.'.format(nome,media))
else:
    print('O aluno {} foi \033[31mreprovado\033[m com média {}.'.format(nome,media))