# jadon-services-all-in-one

In my work experience, I often make contact with these services, which include **MySQL**, **RabbitMQ**, **Redis**, **Elasticsearch**, **Cerebro**, **Kibana**, etc. This repository will be a super friendly for developers to build them quickly via docker-compose.

## Quick Start

💡 Please install these tools `make`, `docker`, and  `docker-compose` before going through the following steps.

For the first time building those services, we need to execute this command to grant folder access to elasticsearch.
`make grant-permission`

### Running

`make docker-compose-run`

### Stopping

`make docker-compose-stop`

### Services

| Service Name        | Port   |  User / Password  |
| --------   | -----:  | :----:  |
| MySQL      | 3306   |   root / password     |
| Redis        |   6379 |     |
| RabbitMQ        |    5672    | 💡 I strongly recommend that you can set a new user by admin   |
| Elasticsearch        |    9200    |    |

### Dashboard

| Name | Host                    |
| ------------- | ------------------------------ |
| Cerebro      | <http://localhost:9100>       |
| RabbitMQ Admin   | <http://localhost:15672>    |
| Kibana   | <http://localhost:5601>   |

💡**Note**
If your development environment is a VM, please check your VM's memory or increase the maximum memory.

`sysctl -w vm.max_map_count=262144`

## About the services

### Data volume

After building the **MySQL**, **Elasticsearch**, **RabbitMQ**, you will find out the data will be stored in the relative path. It means that the data volume has been mapping into the folder of this repository.

### Elasticsearch

Please notice the elasticsearch [configuration](https://github.com/jaruan/jadon-resources-all-in-one/blob/main/docker-compose.yml#L35), it is a multi-node cluster mode.

#### Q&A

Q: Why does the elasticsearch expose two ports(9200 & 9300)?
A: The Elasticsearch port 9300 is used for node-to-node communication within the Elasticsearch cluster. It is a custom binary protocol used for various cluster operations such as cluster updates, master elections, and shard allocation. This port is not intended for external client communication and is typically restricted to internal cluster usage.

On the other hand, port 9200 is the default HTTP port for Elasticsearch. It is used for client communication and sending REST requests to the Elasticsearch cluster. This port allows clients to interact with Elasticsearch using various programming languages and tools

## Next step

I will continue to upgrade the docker-compose.yml. Add more and more popular service configurations to it. Also, I'd like to welcome developers giving me advice. I will appreciate it.
