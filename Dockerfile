# Imagen base
FROM ubuntu:24.04 

# Actualizamos los paquetes
RUN apt-get update && apt-get install -y python3 python3-pip

# Directorio de trabajo
WORKDIR /app

# Copiamos los requisitos
#COPY requirements.txt /app/requirements.txt

# Instalamos las dependencias
#RUN pip3 install -r requirements.txt

# Copiamos el resto del código
COPY . /app

# Comando que se ejecuta al iniciar el contenedor
CMD ["python3", "main.py"]

