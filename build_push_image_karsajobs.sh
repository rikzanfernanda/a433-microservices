# Set variables
IMAGE_NAME=ghcr.io/rikzanfernanda/karsajobs:latest

# menjalankan docker build untuk membangun docker image dari Dockerfile
echo 'Building docker image...'
docker build -t $IMAGE_NAME .
echo '\n'

# Login github package
echo 'Login to github'
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
echo '\n'

# Push docker image to github package
echo 'Push docker image to github package'
docker push $IMAGE_NAME