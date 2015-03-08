---
Author:		gsingh
title:          python stack container 
layout:         post
date:           2015-03-02 12:28:26 
---

---


-
  `docker run -i -t --name dev --link stack:stackdev --volumes-from stack vim-python`  
  `docker run -i -t --name stack -v ~/project.docker:/notebooks project.docker`  
  `docker run -d --name ipython -p 80:8888 -e "PASSWORD=pie" -e "USE_HTTP=1" --volumes-from stack ipython/notebook:master`

	- C-p C-q detach container

### fig layers
- ipie ipython/notebook 
	- uses jupiter server at localhost/notebooks 
	- serves from /notebook --linked to project
- vim  compiled [dev](http://www.hokstad.com/docker/patterns)
	- deleted vim-tiny, installed vim (comes with python), 
	- add .vimrc, .vim 
- pystack
	- conda install, some pip installs also



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

 
