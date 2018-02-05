default:
	@echo "\n\tUse \033[32mmake commit -m msg=\"...\" / pull / push\033[0m options\n"
	cd math_base; jupyter notebook

commit:
	git add *
	git commit -m $(msg)

pull:
	git reset --hard HEAD^
	git pull origin master

push:
	git push -u origin master

init:
	git init
	git add *
	git commit -m "1st commit the project"
	@# push an existing repository from the command line, if not create repository on github
	git remote add origin https://github.com/fantasy-mark/dl.git
	git push -u origin master

backup:
	cp /usr/lib/python2.7/self/* modules

recovery:
	@-mkdir /usr/lib/python2.7/self &2>/dev/null
	sudo cp modules/* /usr/lib/python2.7/self/
	@# in file
	@# import sys
	@# for p in sys.path: print p
	@# from self.XXXX import *
