REGISTRY_NAME = bostjanbozic
IMAGE_NAME = infracoders-logging
TAG = 0.0.1
IMAGE_REF = $(REGISTRY_NAME)/$(IMAGE_NAME):$(TAG)

#
# Docker targets
#
build:
	docker build -t $(IMAGE_NAME):$(TAG) .
	docker build -t $(IMAGE_NAME):latest .
	docker tag $(IMAGE_NAME):$(TAG) $(REGISTRY_NAME)/$(IMAGE_NAME):$(TAG)
	docker tag $(IMAGE_NAME):latest $(REGISTRY_NAME)/$(IMAGE_NAME):latest

push:
	docker push $(REGISTRY_NAME)/$(IMAGE_NAME):$(TAG)
	docker push $(REGISTRY_NAME)/$(IMAGE_NAME):latest

deploy-fluentd:
	@kubectl apply -f fluentd-deployment.yaml;

undeploy-fluentd:
	@kubectl delete -f fluentd-deployment.yaml;

deploy-fluentd-configmap:
	@kubectl apply -f fluentd-configmap.yaml;

undeploy-fluentd-configmap:
	@kubectl delete -f fluentd-configmap.yaml;

deploy-fluentbit:
	@kubectl apply -f fluentbit-deployment.yaml;

undeploy-fluentbit:
	@kubectl delete -f fluentbit-deployment.yaml;

deploy-fluentbit-configmap:
	@kubectl apply -f fluentbit-configmap.yaml;

undeploy-fluentbit-configmap:
	@kubectl delete -f fluentbit-configmap.yaml;
