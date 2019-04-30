# Logging in Kubernetes with Fluentd sidecar containers

Showcase for logging with custom logs in Kubernetes pods using [Fluentd project](https://www.fluentd.org/).

## Architecture
Fluentd sidecard container is deployed next to running container in Kubernetes pod. Fluend configuration is specified by `ConfigMap`. Both containers share pod's `volumeMount` to have access to same log files.

For logging storage [Elasticsearch](https://www.elastic.co/products/elasticsearch) is used and [Kibana](https://www.elastic.co/products/kibana) for vizualization.

## Workflow
* deploy Elasticsearch node (`make deploy-es` in `elk` folder)
* deploy Kibana (`make deploy-kibana` in `elk` folder)
* deploy Fluentd ConfigMap (`make deploy-configmap` in `logging-example` folder)
* deploy pod including logging script (`make deploy` in `logging-example` folder)

**Note**: Project includes `Dockerfiles` to build your own customized iamges.

Kibana instance is accessible via NodePort 31000 on any Kubernetes node.