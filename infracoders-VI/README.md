# Logging in Kubernetes with Fluentd sidecar containers

Showcase for logging with custom logs in Kubernetes pods using [Fluentd](https://www.fluentd.org/) and [Fluent Bit](https://fluentbit.io/) projects.

## Architecture
Fluentd/Fluent Bit sidecard container is deployed next to running container in Kubernetes pod. Fluend/Fluent Bit configuration is specified by `ConfigMap`. Both containers share pod's `volumeMount` to have access to same log files.

For logging [Elasticsearch](https://www.elastic.co/products/elasticsearch) is used for data storage and [Kibana](https://www.elastic.co/products/kibana) for vizualization.

## Workflow
* deploy Elasticsearch node (`make deploy-es` in `elk` folder)
* deploy Kibana (`make deploy-kibana` in `elk` folder)
* deploy Fluentd ConfigMap (`make deploy-fluentd-configmap` in `logging-example` folder)
* deploy pod including logging container and Fluentd sidecard (`make deploy-fluentd` in `logging-example` folder)
* deploy Fluent-bit ConfigMap (`make deploy-fluentbit-configmap` in `logging-example` folder)
* deploy pod including logging container and Fluent-bit sidecard (`make deploy-fluentbit` in `logging-example` folder)

**Note**: Project includes `Dockerfiles` to build your own customized images.

Kibana instance is accessible via NodePort 31000 on any Kubernetes node.