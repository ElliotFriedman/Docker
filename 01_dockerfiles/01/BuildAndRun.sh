# build the docker image
docker build -t teamspeak .
# run the image and set the environment variable to accept
# open up ports per docker documentation
# remove image after running
docker run -it --rm -p 30033:30033 -p 9987:9987/udp -p 10011:10011 --env TS3SERVER_LICENSE=accept teamspeak
