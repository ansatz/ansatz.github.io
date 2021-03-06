---
layout: post
title:  "jekyll"
date:   2015-02-26 18:57:26
categories: jekyll update
tags:	[jekyll]
---
# tags css
- tags
[cloud](http://codingtips.kanishkkunal.in/tag-cloud-jekyll/)
[tag](http://charliepark.org/tags-in-jekyll/)



`date +%Y-%m-%d\ %H:%M:%S`
[md syntax](https://raw.githubusercontent.com/barryclark/www.jekyllnow.com/gh-pages/_posts/2014-6-19-Markdown-Style-Guide.md)

` -- run server ---`
{% highlight bash %}
 docker run -it -v $(pwd):/data -p 6000:6000 jkblog ruby -S jekyll serve --host=0.0.0.0 --watch --force_polling
 docker ps -l #get cid of jkblog
 docker inspect <cid> | grep IPAdress
# go to that ip in browser to view locally :4000
{% endhighlight %}

` -- post ---`
[reference][ref1] 
[jekyllrb docs][ref2]
{% highlight bash %}
 touch _posts/`date +%Y-%m-%d`-a_title.md
> yaml header
---
author:                ansatz
title:         	__title__
layout:                post
date:          	2014-11-06 20:20:00
---
{% endhighlight %}


` --- git ---` [github][live]
{% highlight bash %}
 git add .
 git commit -m "some msg"
 git push -u origin master
{% endhighlight %}

- image style
{% highlight css %}
<div style="float:right; margin:8px; text-align:center">
  <a href="http://globetrotter.berkeley.edu/people2/Chomsky/chomsky-con0.html"><img
    src="http://globetrotter.berkeley.edu/people2/Chomsky/images/Chomsky3.jpg"
	  title="Noam Chomsky" width=106></a>
	    <bR>Noam Chomsky
		</div>
{% endhighlight %}

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll’s dedicated Help repository][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help
[ref1]:  http://jekyllrb.com/docs/posts/
[ref2]:	 http://salizzar.net/2014/11/06/creating-a-github-jekyll-blog-using-docker/
[live]:  http://ansatz.github.io/
