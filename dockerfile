# Usar una imagen base oficial de Node.js
FROM node:16-alpine

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar package.json y package-lock.json al contenedor
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código fuente de la aplicación
COPY . .

# Exponer el puerto que va a usar la aplicación (puedes cambiarlo si es necesario)
EXPOSE 3000

# Definir el comando para ejecutar la aplicación
CMD ["node", "app.js"]
