# Imagen base
FROM node:18-alpine

# Carpeta de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar todo el código
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
