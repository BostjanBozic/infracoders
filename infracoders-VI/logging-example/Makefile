REGISTRY_NAME = bostjanbozic
IMAGE_NAME = infracoders_logging
TAG = 0.0.1
IMAGE_REF = $(REGISTRY_NAME)/$(IMAGE_NAME):$(TAG)

K8S_DEFINITION = logging-deployment.yaml

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

deploy:
	sed 's|@@IMAGE_REF@@|$(IMAGE_REF)|g' $(K8S_DEFINITION) \
		| sed 's|@@K8S_NAME@@|infracoders-logging|g' \
		| kubectl apply -f  -

undeploy:
	sed 's|@@IMAGE_REF@@|$(IMAGE_REF)|g' $(K8S_DEFINITION) \
		| sed 's|@@K8S_NAME@@|infracoders-logging|g' \
		| kubectl delete -f  -