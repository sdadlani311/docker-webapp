FROM shiv/baseimage
MAINTAINER Shiv Dadlani <shiv.dadlani@gmail.com>

ENV HOME /root
RUN mkdir /build
ADD . /build


RUN /build/enable_repos.sh && \
          /build/prepare.sh && \
          /build/utilities.sh && \
          /build/ruby2.0.sh && \
          /build/nodejs.sh && \
          /build/python.sh && \
	  /build/nginx.sh && \
	  /build/uwsgi.sh && \
	  /build/flask.sh && \
          /build/mongodb.sh && \
	  /build/finalize.sh

EXPOSE 80:8080 222:22 27017:27017

CMD ["/usr/bin/supervisord", "-n"]
