# karsajobs-ui
Frontend for [karsajobs](https://github.com/dicodingacademy/karsajobs)

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

<br>
<br>

# Development
```sh
git clone -b karsajobs-ui https://github.com/rikzanfernanda/a433-microservices.git
```

Set permission
```sh
chmod +x build_push_image_karsajobs_ui.sh
```

Check token variable
```sh
nano ~/.bashrc

# if not exists, add:
export CR_PAT="YOUR_TOKEN"

source ~/.bashrc
echo $CR_PAT
```

Run build_push_image_karsajobs.sh
```sh
./build_push_image_karsajobs_ui.sh
```

Change package visibility to public