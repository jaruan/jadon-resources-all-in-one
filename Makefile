docker-compose-run:
	docker-compose -f docker-compose.yml up
.PHONY: docker-compose-run

docker-compose-stop:
	docker-compose -f docker-compose.yml down
.PHONY: docker-compose-stop

grant-permission:
	chown -R 1000:1000 elasticsearch/data/node1
	chown -R 1000:1000 elasticsearch/data/node2
	chown -R 1000:1000 elasticsearch/data/node3
.PHONY: grant-permission