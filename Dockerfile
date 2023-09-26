# Menggunakan image Node.js versi 14.21.3 dengan base Alpine Linux
FROM node:14-alpine

# Menentukan direktori kerja di dalam container sebagai /app
WORKDIR /app

# Menyalin seluruh konten dari direktori host ke dalam direktori /app di dalam container
COPY . .

# setting Environment Variables
ENV NODE_ENV=production DB_HOST=item-db

# Melakukan instalasi paket npm (production) dengan izin yang tidak aman (unsafe-perm)
# dan menjalankan perintah build
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang akan digunakan oleh container
EXPOSE 8080

# Menjalankan aplikasi
CMD ["npm", "start"]