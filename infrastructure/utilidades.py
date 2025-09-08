import os
import random
from colorama import init, Fore, Style
import logging

# =========================
# CONFIGURACIÓN Y UTILIDAD
# =========================

LOG_DIR = os.path.expanduser("~/fuzzing_logs")
DEFAULT_WORDLIST = "Documentos/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-big.txt"
AUTORES = "Andres Felipe Galeano Tellez, Daniel Manrique Hernandez, Laura Yulieth Lopez Albino"

os.makedirs(LOG_DIR, exist_ok=True)

# Configuración de logging
LOG_FILE = os.path.join(LOG_DIR, "fuzzing_eventos.log")
logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format='%(asctime)s %(levelname)s: %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

def registrar_evento(mensaje, nivel="info"):
    if nivel == "info":
        logging.info(mensaje)
    elif nivel == "error":
        logging.error(mensaje)
    elif nivel == "warning":
        logging.warning(mensaje)
    else:
        logging.debug(mensaje)

init(autoreset=True)

BANNERS = [
    # Banner 1: Robot grande
    f"{Fore.BLUE}                                                  _____\n"
    f"                                                _|     |_ \n"
    f"                                               | |  O  | |\n"
    f"                                               | |  O  | |\n"
    f"                                               | |_____| |\n"
    f"                                               |  _____  |\n"
    f"                                               | |     | |\n"
    f"                                              /  |     |  \\\n"
    f"                                             /___|_____|___\\\n"
    f"                                                /_/   \\_\\\n"
    f"                                            [ ROBOT FUZZER ]{Style.RESET_ALL}",
    # Banner 2: Gato grande
    f"{Fore.GREEN}                                                |\     /|\n"
    f"                                               /  o   o  \\\n"
    f"                                              ( ==  ^  == )\n"
    f"                                               )         ( \n"
    f"                                              (           )\n"
    f"                                             ( (  )   (  ) )\n"
    f"                                            (__(__)___(__)__)\n"
    f"                                             [ GATO FUZZER ]{Style.RESET_ALL}",
    # Banner 3: Pulpo grande
    f"{Fore.YELLOW}                                                ___     ___\n"
    f"                                              ( o o ) ( o o )\n"
    f"                                              (  \"  ) (  \"  )\n"
    f"                                              (     ) (     )\n"
    f"                                              (     ) (     )\n"
    f"                                              (      V      )\n"
    f"                                               \\           /\n"
    f"                                                \\         /\n"
    f"                                                 \\_______/\n"
    f"                                             [ PULPO FUZZER ]{Style.RESET_ALL}",
    # Banner 4: Fantasma grande
    f"{Fore.MAGENTA}                                                .-\"\"\"-.\n"
    f"                                              .'       '.\n"
    f"                                             /  .-.-.  \\\n"
    f"                                            |  /  |  \\  |\n"
    f"                                             \\ \\     / /\n"
    f"                                              '._\\_/_.'\n"
    f"                                              .-'   '-.\n"
    f"                                             /         \\\n"
    f"                                            / /|     |\\ \\\n"
    f"                                           (_/ |_____| \\_)\n"
    f"                                          [ FANTASMA FUZZER ]{Style.RESET_ALL}",
]

HEADER = f"{Fore.CYAN} ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░██╗░░░░░░░██╗███████╗██████╗░███████╗██╗░░░██╗███████╗███████╗░█████╗░██╗░░░░░██╗░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░██║░░██╗░░██║██╔════╝██╔══██╗██╔════╝██║░░░██║╚════██║╚════██║██╔══██╗██║░░░░░██║░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░╚██╗████╗██╔╝█████╗░░██████╦╝█████╗░░██║░░░██║░░███╔═╝░░███╔═╝██║░░╚═╝██║░░░░░██║░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░░████╔═████║░██╔══╝░░██╔══██╗██╔══╝░░██║░░░██║██╔══╝░░██╔══╝░░██║░░██╗██║░░░░░██║░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░░╚██╔╝░╚██╔╝░███████╗██████╦╝██║░░░░░╚██████╔╝███████╗███████╗╚█████╔╝███████╗██║░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═╝░░░░░░╚═════╝░╚══════╝╚══════╝░╚════╝░╚══════╝╚═╝░░░░░░░░░░░   {Style.RESET_ALL}\n" \
         f"{Fore.CYAN} ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   {Style.RESET_ALL}\n"

FOOTER = f"{Fore.BLUE}  ====================================================================================================={Style.RESET_ALL}\n" \
         f"{Fore.CYAN}                                   ¡Bienvenido al menú de fuzzing!                                     {Style.RESET_ALL}\n" \
         f"{Fore.BLUE}  ====================================================================================================={Style.RESET_ALL}\n" \
         f"{Fore.CYAN}     Autores: {AUTORES}                                                                               {Style.RESET_ALL}\n" \
         f"{Fore.BLUE}  ====================================================================================================={Style.RESET_ALL}\n"

def mostrar_banner():
    print(HEADER)
    print(f"{Fore.BLUE} ====================================================================================================={Style.RESET_ALL}")
    print(f"{Fore.BLUE}                                    INICIANDO FUZZING AUTOMÁTICO{Style.RESET_ALL}")
    print(f"{Fore.BLUE}  ====================================================================================================={Style.RESET_ALL}")
    print(random.choice(BANNERS))
    print(FOOTER)
