# =========================
# CONFIGURACIÓN Y UTILIDAD
# =========================

LOG_DIR="$HOME/fuzzing_logs"
DEFAULT_WORDLIST="Documentos/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-big.txt"
mkdir -p "$LOG_DIR"
AUTORES="Andres Felipe Galeano Tellez, Daniel Manrique Hernandez, Laura Yulieth Lopez Albino"

mostrar_banner() {
    local num=$(( RANDOM % 4 ))

    # Colores ANSI
    local RED='\033[1;31m'
    local GREEN='\033[1;32m'
    local YELLOW='\033[1;33m'
    local BLUE='\033[1;34m'
    local MAGENTA='\033[1;35m'
    local CYAN='\033[1;36m'
    local WHITE='\033[1;37m'
    local GRAY='\033[1;90m'

   
 echo -e "${CYAN} ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░██╗░░░░░░░██╗███████╗██████╗░███████╗██╗░░░██╗███████╗███████╗░█████╗░██╗░░░░░██╗░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░██║░░██╗░░██║██╔════╝██╔══██╗██╔════╝██║░░░██║╚════██║╚════██║██╔══██╗██║░░░░░██║░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░╚██╗████╗██╔╝█████╗░░██████╦╝█████╗░░██║░░░██║░░███╔═╝░░███╔═╝██║░░╚═╝██║░░░░░██║░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░░████╔═████║░██╔══╝░░██╔══██╗██╔══╝░░██║░░░██║██╔══╝░░██╔══╝░░██║░░██╗██║░░░░░██║░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░░╚██╔╝░╚██╔╝░███████╗██████╦╝██║░░░░░╚██████╔╝███████╗███████╗╚█████╔╝███████╗██║░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═╝░░░░░░╚═════╝░╚══════╝╚══════╝░╚════╝░╚══════╝╚═╝░░░░░░░░░░░   ${RESET}"
 echo -e "${CYAN} ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ${RESET}"

 echo -e "${BLUE} =====================================================================================================${RESET}"
 echo -e "${BLUE}                                    INICIANDO FUZZING AUTOMÁTICO${RESET}"
 echo -e "${BLUE}  =====================================================================================================${RESET}"

    case $num in
        0)
            # Banner 1: Robot grande
           
            echo -e "${BLUE}                                                  _____${RESET}"
            echo -e "${BLUE}                                                _|     |_ ${RESET}"
            echo -e "${BLUE}                                               | |  O  | |${RESET}"
            echo -e "${BLUE}                                               | |  O  | |${RESET}"
            echo -e "${BLUE}                                               | |_____| |${RESET}"
            echo -e "${BLUE}                                               |  _____  |${RESET}"
            echo -e "${BLUE}                                               | |     | |${RESET}"
            echo -e "${BLUE}                                              /  |     |  \\${RESET}"
            echo -e "${BLUE}                                             /___|_____|___\\${RESET}"
            echo -e "${BLUE}                                                /_/   \\_\\${RESET}"
            echo -e "${BLUE}                                            [ ROBOT FUZZER ]${RESET}"
            ;;
        1)
            # Banner 2: Gato grande
            echo -e "${GREEN}                                                |\     /|${RESET}"
            echo -e "${GREEN}                                               /  o   o  \\${RESET}"
            echo -e "${GREEN}                                              ( ==  ^  == )${RESET}"
            echo -e "${GREEN}                                               )         ( ${RESET}"
            echo -e "${GREEN}                                              (           )${RESET}"
            echo -e "${GREEN}                                             ( (  )   (  ) )${RESET}"
            echo -e "${GREEN}                                            (__(__)___(__)__)${RESET}"
            echo -e "${GREEN}                                             [ GATO FUZZER ]${RESET}"
            ;;
        2)
            # Banner 3: Pulpo grande
            echo -e "${YELLOW}                                                ___     ___${RESET}"
            echo -e "${YELLOW}                                              ( o o ) ( o o )${RESET}"
            echo -e "${YELLOW}                                              (  \"  ) (  \"  )${RESET}"
            echo -e "${YELLOW}                                              (     ) (     )${RESET}"
            echo -e "${YELLOW}                                              (     ) (     )${RESET}"
            echo -e "${YELLOW}                                              (      V      )${RESET}"
            echo -e "${YELLOW}                                               \\           /${RESET}"
            echo -e "${YELLOW}                                                \\         /${RESET}"
            echo -e "${YELLOW}                                                 \\_______/${RESET}"
            echo -e "${YELLOW}                                             [ PULPO FUZZER ]${RESET}"
            ;;
        3)
            # Banner 4: Fantasma grande
            echo -e "${MAGENTA}                                                .-\"\"\"-.${RESET}"
            echo -e "${MAGENTA}                                              .'       '.${RESET}"
            echo -e "${MAGENTA}                                             /  .-.-.  \\${RESET}"
            echo -e "${MAGENTA}                                            |  /  |  \\  |${RESET}"
            echo -e "${MAGENTA}                                             \\ \\     / /${RESET}"
            echo -e "${MAGENTA}                                              '._\\_/_.'${RESET}"
            echo -e "${MAGENTA}                                              .-'   '-.${RESET}"
            echo -e "${MAGENTA}                                             /         \\${RESET}"
            echo -e "${MAGENTA}                                            / /|     |\\ \\${RESET}"
            echo -e "${MAGENTA}                                           (_/ |_____| \\_)${RESET}"
            echo -e "${MAGENTA}                                          [ FANTASMA FUZZER ]${RESET}"
            ;;
    esac

     echo -e "${BLUE}  =====================================================================================================${RESET}"
     echo -e "${CYAN}                                   ¡Bienvenido al menú de fuzzing!                                     ${RESET}"
     echo -e "${BLUE}  =====================================================================================================${RESET}"
     echo -e "${CYAN}     Autores: ${AUTORES}                                                                               ${RESET}"
     echo -e "${BLUE}  =====================================================================================================${RESET}"
}
