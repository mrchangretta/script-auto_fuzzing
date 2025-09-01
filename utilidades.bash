# =========================
# CONFIGURACIÓN Y UTILIDAD
# =========================

LOG_DIR="$HOME/fuzzing_logs"
DEFAULT_WORDLIST="Documentos/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-big.txt"
mkdir -p "$LOG_DIR"



mostrar_banner() {
    local num=$(( RANDOM % 4 ))
    case $num in
        0)
            echo "==============================="
            echo "   INICIANDO FUZZING AUTOMÁTICO"
            echo "==============================="
            echo ""
            echo "         .-\"\"\"-."
            echo "        / .===. \\"
            echo "        \/ 6 6 \/"
            echo "        ( \___/ )"
            echo "___ooo__\_____/__ooo___"
            ;;
        1)
            echo "==============================="
            echo "   INICIANDO FUZZING AUTOMÁTICO"
            echo "==============================="
            echo ""
            echo "        (\_/)"
            echo "        ( •_•)"
            echo "        / >🍪   "
            echo "¡Un conejito hacker!"
            ;;
        2)
            echo "==============================="
            echo "   INICIANDO FUZZING AUTOMÁTICO"
            echo "==============================="
            echo ""
            echo "      \\(^_^)/"
            echo "      /|   |\\"
            echo "       |   |"
            echo "     _/     \\_"
            echo "¡Listo para fuzzear!"
            ;;
        3)
            echo "==============================="
            echo "   INICIANDO FUZZING AUTOMÁTICO"
            echo "==============================="
            echo ""
            echo "      (•_•)"
            echo "     <)   )╯"
            echo "      /   \\"
            echo "¡Fuzzing en acción!"
            ;;
    esac
    echo ""
    echo "¡Bienvenido al menú de fuzzing!"
    echo ""
}
