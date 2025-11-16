VERSION=v1-5.0.31
PROJECT_ID=nirmata
REGISTRY=ghcr.io
PROJECT=${REGISTRY}/${PROJECT_ID}

all: build-and-push

build-and-push:
	docker buildx create --use
	docker buildx build --platform linux/amd64,linux/arm64 --push -t ${PROJECT}/mongo-k8s-sidecar:${VERSION} .

.PHONY: build-and-push
