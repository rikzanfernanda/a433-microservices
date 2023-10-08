Karsajobs
=============================
Karsajobs is simple jobs application written in Go.

## Configuration
Karsajobs read configuration from environment variable

| ENV        |      Description                 |
|------------|:---------------------------------|
| APP_PORT   | run karsajobs in specific port   |
| MONGO_HOST | mongodb hostname                 |
| MONGO_USER | mongodb user                     |
| MONGO_PASS | mongodb password                 |


  
## Endpoint
- /jobs
  - `GET` get list job
- /job
  - `POST` create a job  
- /job/id
  - `GET` get job
  - `DELETE` delete job
- /health
  - `GET` check app health status

<br>
<br>

# Development
```sh
git clone -b karsajobs https://github.com/rikzanfernanda/a433-microservices.git
```

Set permission
```sh
chmod +x build_push_image_karsajobs.sh
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
./build_push_image_karsajobs.sh
```

Change visibility package to public