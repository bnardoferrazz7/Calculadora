#!/bin/bash

while true
do
    echo "===== CALCULADORA ====="
    echo "1 - Soma"
    echo "2 - Subtracao"
    echo "3 - Multiplicacao"
    echo "4 - Divisao"
    echo "5 - Sair"

    read -p "Escolha uma opcao: " opcao

    if [ "$opcao" -eq 5 ]; then
        echo "Encerrando calculadora..."
        break
    fi

    read -p "Digite o primeiro numero: " numero1
    read -p "Digite o segundo numero: " numero2

    case $opcao in
        1)
            resultado=$((numero1 + numero2))
            echo "Resultado: $resultado"
            ;;
        2)
            resultado=$((numero1 - numero2))
            echo "Resultado: $resultado"
            ;;
        3)
            resultado=$((numero1 * numero2))
            echo "Resultado: $resultado"
            ;;
        4)
            if [ "$numero2" -eq 0 ]; then
                echo "Nao e possivel dividir por zero."
            else
                resultado=$((numero1 / numero2))
                echo "Resultado: $resultado"
            fi
            ;;
        *)
            echo "Opcao invalida."
            ;;
    esac

    echo
done
