
# =========================
# FUNCIONES DE HERRAMIENTAS
# =========================

fuzzing_ffuf_directorios() {
    leer_objetivo_y_diccionario
    ffuf -u http://$objetivo/FUZZ -w $diccionario | tee "$LOG_FILE"
}

fuzzing_ffuf_dns() {
    leer_dominio_y_diccionario
    ffuf -u http://FUZZ.$dominio -w $diccionario_dns | tee "$LOG_FILE"
}

fuzzing_wfuzz_directorios() {
    leer_objetivo_y_diccionario
    wfuzz -c -w $diccionario --hc 404 $objetivo/FUZZ | tee "$LOG_FILE"
}

fuzzing_wfuzz_dns() {
    leer_dominio_y_diccionario
    wfuzz -c -w $diccionario_dns -u http://FUZZ.$dominio | tee "$LOG_FILE"
}

fuzzing_gobuster_directorios() {
    leer_objetivo_y_diccionario
    gobuster dir -u $objetivo -w $diccionario | tee "$LOG_FILE"
}

fuzzing_gobuster_dns() {
    leer_dominio_y_diccionario
    gobuster dns -d $dominio -w $diccionario_dns | tee "$LOG_FILE"
}

fuzzing_dirb_directorios() {
    leer_objetivo_y_diccionario
    dirb $objetivo $diccionario | tee "$LOG_FILE"
}

fuzzing_dirb_dns() {
    leer_dominio_y_diccionario
    dirb http://$dominio $diccionario_dns | tee "$LOG_FILE"
}