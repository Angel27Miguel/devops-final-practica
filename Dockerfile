# Usamos Node.js 18 ligero
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install --legacy-peer-deps

# Copiar todo el código
COPY . .

# Exponer el puerto de la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
