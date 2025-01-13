REGISTRY ?= registry.trofeo.id/pandeptwidyaop/github-action
TAG ?= 1.0.0

build:
	docker build --push --platform linux/amd64,linux/arm64 -t ${REGISTRY}:${TAG} -t ${REGISTRY}:latest .