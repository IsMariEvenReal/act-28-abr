import os

def revisar_dependencias():
    
    deps=[
        "app/Dockerfile"
        "helper/Dockerfile"
        "docker-compose.yml"
        "README.md"
        "infraestructura.yaml"
    ]
    print("--- REPORTE DEL PROYECTO ---\n")
    for file in deps:
        exists = os.path.exists(file)
        if exists:
            status = True
        else:
            status = False
        print(f"{file} existe:", f"{status}")
    if __name__ == "__main__":
        revisar_dependencias()