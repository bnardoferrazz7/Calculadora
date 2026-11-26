while True:
    numero1 = float(input("Digite um numero: "))
    numero2 = float(input("Digite outro numero: "))
    operacao = input("Escolha: +, -, *, /: ")
    resultado = None

    if operacao == "+":
        resultado = numero1 + numero2
    elif operacao == "-":
        resultado = numero1 - numero2
    elif operacao == "*":
        resultado = numero1 * numero2
    elif operacao == "/":
        if numero2 == 0:
            print("Erro: Divisão por zero!")
        else:
            resultado = numero1 / numero2
    else:
        print("Operação inválida")

    if resultado is not None:
        print("Resultado:", resultado)

    continuar = input("Quer continuar? (s/n): ")
    if continuar.lower() == "n":
        break
