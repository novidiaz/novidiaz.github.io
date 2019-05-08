IMAGE				:=	httpd:2.4
EXPOSE_PORT			:=	8080
LISTEN_PORT			:=	80
PROJECT_NAME		:=	novidiaz.github.io

.PHONY:

.SILENT:


run:
	docker run -dit --name $(PROJECT_NAME) -e TZ=Asia/Jakarta -p $(EXPOSE_PORT):$(LISTEN_PORT) -v $(PWD):/usr/local/apache2/htdocs/ $(IMAGE)

stop:
	docker stop $(PROJECT_NAME) && \
	docker rm `docker ps -aqf name=$(PROJECT_NAME)`