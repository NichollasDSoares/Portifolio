# Veradeiro ou Falso

print('''Hello significa, olá ou Bom dia?
[1] Bom dia
[2] Olá ''')
a = int(input("Alternativa: "))

if a == 1:
    print("FALSO.\nQue pena!! Você errou.")
elif a == 2:
    print("VERDADEIRO.\nParabêns!! Você acertou.")
else:
    print("Opção invalida.")


