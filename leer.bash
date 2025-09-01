
leer_objetivo_y_diccionario() {
    read -p "Ingrese la URL o IP objetivo: " objetivo
    read -p "Ingrese la ruta del diccionario (por defecto: $DEFAULT_WORDLIST): " diccionario
    if [ -z "$diccionario" ]; then
        diccionario="$DEFAULT_WORDLIST"
    fi
    LOG_FILE="$LOG_DIR/$(echo $objetivo | tr '/:' '_')_$(date +%Y%m%d_%H%M%S).log"
}

leer_dominio_y_diccionario() {
    read -p "Ingrese el dominio objetivo: " dominio
    read -p "Ingrese la ruta del diccionario de subdominios: " diccionario_dns
    LOG_FILE="$LOG_DIR/$(echo $dominio | tr '/:' '_')_dns_$(date +%Y%m%d_%H%M%S).log"
}
