# jadon-resources-all-in-one

I usually make some applications or servers that depends some services, which includes **MySQL**, **RabbitMQ**, **Redis**, **Elasticsearch**, **Cerebro**, **Kibana**, etc. This repository will be a super useful for developers to build them quickly via docker-compose.

## Quick Start

For the first time building those services, we need to execute this command to grant a folder access permission to elasticsearch.
`make grant-permission`

### Running

`make docker-compose-run`

### Stopping

`make docker-compose-stop`

💡**Note**
If your development environment is a VM, please check your VM's memory or increase the maximum memory.

`sysctl -w vm.max_map_count=262144`

## About the services

### Elasticsearch

Please notice the elasticsearch [configuration](https://github.com/jaruan/jadon-resources-all-in-one/blob/main/docker-compose.yml#L35), it is a multi-node cluster mode.

#### Q&A

Q: Why the elasticsearch expose two ports(9200 & 9300)?
A: The Elasticsearch port 9300 is used for node-to-node communication within the Elasticsearch cluster. It is a custom binary protocol used for various cluster operations such as cluster updates, master elections, and shard allocation. This port is not intended for external client communication and is typically restricted to internal cluster usage.

On the other hand, port 9200 is the default HTTP port for Elasticsearch. It is used for client communication and sending REST requests to the Elasticsearch cluster. This port allows clients to interact with Elasticsearch using various programming languages and tools

## Next step

I will continue to upgrade the docker-compose.yml. Add more and more popular service configuration in it. Also, welcome developers giving me advices. I will really appreciate.


