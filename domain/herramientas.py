import subprocess
from infrastructure.leer import leer_objetivo_y_diccionario, leer_dominio_y_diccionario
from infrastructure.utilidades import LOG_DIR
import os
from datetime import datetime

def generar_reporte_nombre(herramienta):
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    return os.path.join(LOG_DIR, f"reporte_{herramienta}_{timestamp}.log")

def ejecutar_comando(cmd, herramienta):
    reporte_file = generar_reporte_nombre(herramienta)
    try:
        with open(reporte_file, "w") as log:
            resultado = subprocess.run(cmd, stdout=log, stderr=subprocess.PIPE, text=True)
        if resultado.returncode != 0:
            print(f"[Error] Falló la ejecución: {resultado.stderr}")
        else:
            print(f"[OK] Comando ejecutado correctamente. Reporte: {reporte_file}")
    except Exception as e:
        print(f"[Error] Excepción al ejecutar el comando: {e}")

def fuzzing_ffuf_directorios():
    objetivo, diccionario = leer_objetivo_y_diccionario()
    cmd = ["ffuf", "-u", f"http://{objetivo}/FUZZ", "-w", diccionario]
    ejecutar_comando(cmd, "ffuf_directorios")

def fuzzing_ffuf_dns():
    dominio, diccionario_dns = leer_dominio_y_diccionario()
    cmd = ["ffuf", "-u", f"http://FUZZ.{dominio}", "-w", diccionario_dns]
    ejecutar_comando(cmd, "ffuf_dns")

def fuzzing_wfuzz_directorios():
    objetivo, diccionario = leer_objetivo_y_diccionario()
    cmd = ["wfuzz", "-c", "-w", diccionario, "--hc", "404", f"{objetivo}/FUZZ"]
    ejecutar_comando(cmd, "wfuzz_directorios")

def fuzzing_wfuzz_dns():
    dominio, diccionario_dns = leer_dominio_y_diccionario()
    cmd = ["wfuzz", "-c", "-w", diccionario_dns, "-u", f"http://FUZZ.{dominio}"]
    ejecutar_comando(cmd, "wfuzz_dns")

def fuzzing_gobuster_directorios(parametro):
    objetivo, diccionario = leer_objetivo_y_diccionario()
    cmd = ["gobuster", "dir", "-u", f"http://{objetivo}", "-w", diccionario, "-t", str(parametro)]
    ejecutar_comando(cmd, "gobuster_directorios")

def fuzzing_gobuster_dns():
    dominio, diccionario_dns = leer_dominio_y_diccionario()
    cmd = ["gobuster", "dns", "-d", dominio, "-w", diccionario_dns]
    ejecutar_comando(cmd, "gobuster_dns")

def fuzzing_dirb_directorios():
    objetivo, diccionario = leer_objetivo_y_diccionario()
    cmd = ["dirb", f"http://{objetivo}", diccionario]
    ejecutar_comando(cmd, "dirb_directorios")

def fuzzing_dirb_dns():
    dominio, diccionario_dns = leer_dominio_y_diccionario()
    cmd = ["dirb", f"http://{dominio}", diccionario_dns]
    ejecutar_comando(cmd, "dirb_dns")
