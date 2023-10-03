# Menggunakan image Node.js versi 14
FROM node:14

# Menentukan working directory
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Menentukan bahwa aplikasi berjalan dalam production mode
# dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi (8080)
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
