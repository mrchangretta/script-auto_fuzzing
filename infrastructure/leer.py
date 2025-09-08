import os

def leer_objetivo_y_diccionario():
    while True:
        objetivo = input("Introduce el objetivo (URL/IP): ").strip()
        diccionario = input("Introduce la ruta del diccionario: ").strip()
        if not objetivo:
            print("[Error] El objetivo no puede estar vacío.")
            continue
        if not diccionario or not os.path.isfile(diccionario):
            print(f"[Error] El diccionario '{diccionario}' no existe.")
            continue
        return objetivo, diccionario

def leer_dominio_y_diccionario():
    while True:
        dominio = input("Introduce el dominio: ").strip()
        diccionario_dns = input("Introduce la ruta del diccionario DNS: ").strip()
        if not dominio:
            print("[Error] El dominio no puede estar vacío.")
            continue
        if not diccionario_dns or not os.path.isfile(diccionario_dns):
            print(f"[Error] El diccionario DNS '{diccionario_dns}' no existe.")
            continue
        return dominio, diccionario_dns
