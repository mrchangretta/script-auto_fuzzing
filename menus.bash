# =========================
# SUBMENÚS
# =========================

submenu_ffuf() {
    echo ""
    echo "Submenú ffuf:"
    echo "1) Directorios"
    echo "2) DNS"
    echo "3) Volver al menú principal"
    read -p "Seleccione una opción: " subopcion
    case $subopcion in
        1) fuzzing_ffuf_directorios ;;
        2) fuzzing_ffuf_dns ;;
        3) menu_principal ;;
        *) echo "Opción no válida en el submenú." ;;
    esac
}

submenu_wfuzz() {
    echo ""
    echo "Submenú wfuzz:"
    echo "1) Directorios"
    echo "2) DNS"
    echo "3) Volver al menú principal"
    read -p "Seleccione una opción: " subopcion
    case $subopcion in
        1) fuzzing_wfuzz_directorios ;;
        2) fuzzing_wfuzz_dns ;;
        3) menu_principal ;;
        *) echo "Opción no válida en el submenú." ;;
    esac
}

submenu_gobuster() {
    echo ""
    echo "Submenú gobuster:"
    echo "1) Directorios"
    echo "2) DNS"
    echo "3) Volver al menú principal"
    read -p "Seleccione una opción: " subopcion
    case $subopcion in
        1) fuzzing_gobuster_directorios ;;
        2) fuzzing_gobuster_dns ;;
        3) menu_principal ;;
        *) echo "Opción no válida en el submenú." ;;
    esac
}

submenu_dirb() {
    echo ""
    echo "Submenú Dirb:"
    echo "1) Directorios"
    echo "2) DNS"
    echo "3) Volver al menú principal"
    read -p "Seleccione una opción: " subopcion
    case $subopcion in
        1) fuzzing_dirb_directorios ;;
        2) fuzzing_dirb_dns ;;
        3) menu_principal ;;
        *) echo "Opción no válida en el submenú." ;;
    esac
}

# =========================
# MENÚ PRINCIPAL
# =========================

menu_principal() {
    mostrar_banner
    echo "Seleccione la herramienta que desea utilizar:"
    echo "1) ffuf"
    echo "2) wfuzz"
    echo "3) gobuster"
    echo "4) Dirb"
    echo "5) Salir"
    echo ""
    read -p "Ingrese el número de la opción deseada: " opcion

    case $opcion in
        1) submenu_ffuf ;;
        2) submenu_wfuzz ;;
        3) submenu_gobuster ;;
        4) submenu_dirb ;;
        5) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción no válida. Intente de nuevo." ;;
    esac
}