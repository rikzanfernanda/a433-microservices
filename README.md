# a433-microservices
Repository ini digunakan untuk kebutuhan kelas Belajar Membangun Arsitektur Microservices

Silakan clone dengan perintah berikut.<br>
`git clone -b proyek-pertama https://github.com/dicodingacademy/a433-microservices.git`


## langkah-Langkah Push Container Image ke GitHub Package Registry
```
https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry
```
1. Personal access tokens (classic)

- Buka GitHub dan masuk ke akun Anda.
- Klik pada avatar profil Anda di pojok kanan atas dan pilih "Settings".
- Di bagian kiri, pilih "Developer settings" dan kemudian pilih "Personal access tokens".
- Klik pada tombol "Generate token" untuk membuat token baru.
- Pilih hak akses yang sesuai dengan kebutuhan Anda, setidaknya - Anda perlu memilih "write:packages" dan "read:packages".
- Setelah token dibuat, salin token tersebut ke tempat yang aman, karena Anda hanya akan melihatnya sekali.

2. Save your personal access token (classic). We recommend saving your token as an environment variable.
```sh
nano ~/.bashrc

export CR_PAT="YOUR_TOKEN"

source ~/.bashrc

echo $CR_PAT
```
3. Using the CLI for your container type, sign in to the Container registry service at ghcr.io.
```sh
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```
4. Push
```sh
docker push ghcr.io/rikzanfernanda/a433-microservices/item-app:v1
```