# menjalankan docker build untuk membangun docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image
docker image ls

# menjalankan docker image
docker compose up -d

# mamatikan dan menghapus docker container
docker compose down --volumes

#  menghapus docker image
docker image rm item-app:v1

# Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# Mengubah nama image untuk di-push ke GitHub Packages
docker tag item-app:v1 ghcr.io/rikzanfernanda/a433-microservices/item-app:v1

# Mengunggah (push) ke GitHub Packages
docker push ghcr.io/rikzanfernanda/a433-microservices/item-app:v1

# Membuat log.txt berisi logs docker compose
docker-compose logs > log.txt