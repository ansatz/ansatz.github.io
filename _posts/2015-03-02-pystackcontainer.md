---
Author:		gsingh
title:          python stack container 
layout:         post
date:           2015-03-02 12:28:26 
---

---

{% include image.html url="https://s3.amazonaws.com/serversforhackers/difference.png" wide="400" %}
- dev layer
<br>
<br>
- stack layer
<br>
<br>
- ipython layer
<br>
<br>
<br>
<br>
<br>
<br>
<br>
{% highlight bash %}
- docker run -i -t --name dev --link stack:stackdev --volumes-from stack vim-python  
- docker run -i -t --name stack -v ~/project.docker:/notebooks project.docker  
- docker run -d --name ipython -p 80:8888 -e "PASSWORD=pie" -e "USE_HTTP=1" --volumes-from stack ipython/notebook:master  
{% endhighlight %}  
- `C-p C-q` detach container

### docker layers
- each container typically repr one process.. not for linking libraries between dynamically
- link via shared volume or network
- create base image with all the needed shared libs, then use as FROM image for other layers

### fig layers
- ipie ipython/notebook 
	- uses jupiter server at localhost/notebooks 
	- serves from /notebook --linked to project
- vim  compiled [dev](http://www.hokstad.com/docker/patterns)
	- deleted vim-tiny, installed vim (comes with python), 
	- add .vimrc, .vim 
- pystack
	- conda install, some pip installs also

# python layer
- 
  `cd project/sckit-learn-master/`
  `python -m sklearn.ensemble sdbw2.py`


### DockerFile

{% highlight bash %}
FROM continuumio/miniconda
VOLUME ["/project"]
WORKDIR /project
# RUN pip install -r requirements.txt
conda install pip
conda install statsmodels
conda install pandas
conda install numpy
conda install 
{% endhighlight %}


### Docker

- `docker build -t <image>`
  - build image from Dockerfile

- 
  `git add .`  
  `git commit -m 'some msg'`  
  `git push -u origin master`
	- push to git

 
