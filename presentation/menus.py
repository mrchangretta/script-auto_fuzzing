import utilidades
import herramientas


def menu_principal():
    while True:
        utilidades.mostrar_banner()
        print("1. Fuzzing ffuf directorios")
        print("2. Fuzzing ffuf DNS")
        print("3. Fuzzing wfuzz directorios")
        print("4. Fuzzing wfuzz DNS")
        print("5. Fuzzing gobuster directorios")
        print("6. Fuzzing gobuster DNS")
        print("7. Fuzzing dirb directorios")
        print("8. Fuzzing dirb DNS")
        print("9. Salir")
        opcion = input("Seleccione una opción: ")
        if opcion == "1":
            herramientas.fuzzing_ffuf_directorios()
        elif opcion == "2":
            herramientas.fuzzing_ffuf_dns()
        elif opcion == "3":
            herramientas.fuzzing_wfuzz_directorios()
        elif opcion == "4":
            herramientas.fuzzing_wfuzz_dns()
        elif opcion == "5":
            parametro = input("Ingrese el parámetro -t para gobuster: ")
            herramientas.fuzzing_gobuster_directorios(parametro)
        elif opcion == "6":
            herramientas.fuzzing_gobuster_dns()
        elif opcion == "7":
            herramientas.fuzzing_dirb_directorios()
        elif opcion == "8":
            herramientas.fuzzing_dirb_dns()
        elif opcion == "9":
            print("Saliendo...")
            break
        else:
            print("Opción inválida. Intente de nuevo.")