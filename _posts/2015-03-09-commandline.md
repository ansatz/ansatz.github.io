---
author:     ansatz
title:	  command line `fu
layout:	   post
date:		   2015-03-09 16:42:30
---
# [ascii](https://www.youtube.com/watch?v=QMYfkOtYYlg)

{% include image.html url="/files/asciifluid.png" wide="350" %}
- ytb
<br><br><br>
<br><br><br>
<br><br><br>

# docker read IPAddress script
{% highlight bash %}

function jkl()
{
    cd ~/fig.jekyll.docker
    docker run -d -v $(pwd):/data -p 6000:6000 --name jekyll jkblog ruby -S jekyll serve --host=0.0.0.0 --watch --force_polling
    fl=`docker inspect jekyll | grep IPAddress | awk '{print substr($2,2,11)}'`
    fli=http\:\/\/$fl:4000\/
    echo $fli
    firefox $fli
}



{% endhighlight %}

# multiline shell input [here code block](http://tldp.org/LDP/abs/html/here-docs.html)
`cat <<-EOF | python -
    import sys
	    for r in range(3): print 'rob'
EOF'
# ./xscape
function()
{
	(xcape -e 'Ctrl';)
}
[bash script](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html)


#subuser vlc
2015-03-17 13:58
- subuser  
	permissions.json file to allow acces to local dir
	



# one key two functions [ref](http://tiborsimko.org/capslock-escape-control.html)
- [xcape](https://github.com/alols/xcape)

	- make CapsLock behave like Ctrl:

	`setxkbmap -option ctrl:nocaps`
	 
	- make short-pressed Ctrl behave like Escape:    

	`cd ~/xcape`

	`xcape -e 'Control_L=Escape'`
	
	- If the CapsLock key gets "stuck" , revert    

	`xmodmap -e 'keycode 0x42 = Caps_Lock'`

# dvorak


# transcode flac files in dir to mp3
  - 
    `find . -type f -name "*.flac" -exec flac -d '{}' \;  
    find . -type f -name "*.wav" -exec lame -preset insane '{}' \;  
    find . -type f -name "*.mp3" -print0 -exec mv {} -t mp3 +` 
	- `\;` passes 1 arg to command, runs repeatedly
	- `+` passes all args to command, runs once

# package/program installed
	` dpkg -l | grep -E '^ii' | grep firefox`
	`apt-cache policy firefox`
	`which chromium` >> manually install

# symbolic link
	` ln -sf [TGT] [SRC]`
	`unlink [TGT] symlink`
	--	dont use rm symlink



PATH=/home/solver/.subuser/bin:/home/solver/anaconda/bin:/home/solver/.local/bin:/lib/security:/sbin:/usr/sbin:/home/solver/.local/bin:/home/solver/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/sbin:/home/solver/DROID/android-sdk-linux/tools:/home/solver/bin/:/home/solver/git/:/usr/lib/python2.6/:/usr/lib/python2.6/scipy:/home/solver/sandbox/LightTable/LightTable:/home/solver/bin1/conkeror2.sh:/home/solver/util1/wlanscript.sh:/home/solver/.rvm/bin:/home/solver/docker.containers/subuser/logic





