build:
	docker build . -t qq

init:
	docker run -p 6667:6667 -v /tmp:/tmp -d --name webqq qq 

start:
	docker start webqq

stop:
	docker stop webqq
