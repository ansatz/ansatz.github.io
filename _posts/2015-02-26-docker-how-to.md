---
author:		gsingh
title:		docker how-to
layout:		post
date:		2015-02-26 15:38:44
---
`date +%Y-%m-%d\ %H:%M:%S`
[md syntax](https://raw.githubusercontent.com/barryclark/www.jekyllnow.com/gh-pages/_posts/2014-6-19-Markdown-Style-Guide.md)

---
(`docker -v` >>1.5.0, build a8a31ef )

### docker commands


- `docker build -t <imagename> .`
  - build image from Dockerfile 

- `docker run -i -t <image>
  - run image and and attach at same time

- `docker run -v $(pwd):/data <image> CMD -p 6000:6000 jkblog ruby -S jekyll serve --host=0.0.0.0 --watch --force_polling`
  - -v: mount curr directory inside container @/data
  - run container
  - fig file not working

- 
  `docker exec -it <cid> /bin/bash`
  `docker attach <CID>
	- enter a container, form another terminal
	- enter containr from same terminal

- 
   `docker ps -l`  
   `docker inspect <CID> | grep IPAddress`
    - get ip

- `docker commit <cid> <oldname/newname>`
  - container -> image

- 
  `docker images -q --filter "dangling=true" | xargs docker rmi`  
  `docker rm \`docker ps --no-trunc -aq\``
    - clean up docker images `rmi`, container `rm`

- 
  `sudo usermod -a -G docker <user>`  
  `sudo service docker restart`  
  `grep <user> /etc/group`  
  `newgrp docker`  //refresh shell w/o need to logout
    - add user group


### fig
- `fig rm --force -v`
	- remove containers
- `fig ps`

### Dockerfile 


