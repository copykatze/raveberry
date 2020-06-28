FROM raveberry/raveberry-dependencies

RUN pip install -U youtube-dl &&\
	pip install raveberry --no-deps --target /opt &&\
	rm -rf ~/.cache/pip

COPY entrypoint.sh /entrypoint.sh

WORKDIR /opt/raveberry

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/local/bin/daphne", "--bind", "0.0.0.0", "--port", "9000", "main.asgi:application"]
