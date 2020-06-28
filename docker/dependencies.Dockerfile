FROM python:3

COPY common.txt docker.txt ./
RUN apt-get update &&\
	apt-get install -y ffmpeg atomicparsley wget gnupg audiotools &&\
	apt-get clean &&\
	pip install -r docker.txt &&\
	rm -rf ~/.cache/pip
