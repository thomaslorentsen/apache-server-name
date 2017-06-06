# Server Name Demo
Setting a server name prevents apache from attempting a reverse dns look up.
If the reverse address look up fails it will report an error
## Prerequisites
Get Docker by downloading it from [here](https://store.docker.com/search?type=edition&offering=community)
## Building Container
Build the container
```bash
docker build -t apache-servername-demo .
```
## Running Container
Run the container
```bash
docker run -d \
 	--name apache-servername-demo \
 	-p 127.0.0.1:8080:80 \
 	apache-servername-demo
```
You can now [view the demo](http://localhost:8080/)
# Clean Up
Remove the container
```bash
docker stop apache-servername-demo
docker rm apache-servername-demo
```