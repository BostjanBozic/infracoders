deploy-es:
	@kubectl apply -f es-discovery-svc.yaml; \
	kubectl apply -f es-svc.yaml; \
	kubectl apply -f es-node.yaml; \
	kubectl rollout status -f es-node.yaml; \

undeploy-es:
	@kubectl delete -f es-discovery-svc.yaml; \
	kubectl delete -f es-svc.yaml; \
	kubectl delete -f es-node.yaml; \

deploy-kibana:
	@kubectl apply -f kibana-svc.yaml; \
	kubectl apply -f kibana-cm.yaml; \
	kubectl apply -f kibana-node.yaml; \

undeploy-kibana:
	@kubectl delete -f kibana-svc.yaml; \
	kubectl delete -f kibana-cm.yaml; \
	kubectl delete -f kibana-node.yaml; \
