REGISTRY_NAME = bostjanbozic
IMAGE_NAME = fluentd
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
