# jadon-resources

## Quick Start

Please check your vm memory
`sysctl -w vm.max_map_count=262144`

grant a permission to elasticsearch access the folder `./elasticsearch/data/node1`,`./elasticsearch/data/node2`,`./elasticsearch/data/node3`
`make grant-permission`

run docker compose
`make docker-compose-run`

## Notes

### Elasticsearch

The Elasticsearch port 9300 is used for node-to-node communication within the Elasticsearch cluster [1]. It is a custom binary protocol used for various cluster operations such as cluster updates, master elections, and shard allocation. This port is not intended for external client communication and is typically restricted to internal cluster usage [1].

On the other hand, port 9200 is the default HTTP port for Elasticsearch. It is used for client communication and sending REST requests to the Elasticsearch cluster. This port allows clients to interact with Elasticsearch using various programming languages and tools
