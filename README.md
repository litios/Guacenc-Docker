# Guacenc-Docker
Docker image for using the guacenc utility


## Usage 
docker run -v /path/to/recording/folder:/recordings -d --name guacenc litios/guacenc

docker exec -it guacenc guacenc -f /recordings/my-file

*To convert it to mp4*

docker exec -it guacenc ffmpeg -i /recordings/my-file.m4v /recordings/my-file.mp4
