# Shipping Service

Shipping Service adalah bagian dari E-Commerce yang merupakan starter project dari kelas Belajar Membangun Arsitektur Microservices

<br>
<br>

# Development
Clone specific branch
```sh
git clone -b shipping-service https://github.com/rikzanfernanda/a433-microservices.git
```

Set permission
```sh
chmod +x build-push-image.sh
```

Check token variable
```sh
nano ~/.bashrc

# jika tidak ada, add:
export CR_PAT="YOUR_TOKEN"

source ~/.bashrc
echo $CR_PAT
```

Run build_push_image_karsajobs.sh
```sh
./build-push-image.sh
```

Change visibility package to public

Package
https://github.com/users/rikzanfernanda/packages/container/package/shipping-service