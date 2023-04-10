VERSION := 1.0.3
REPOSITORY := takahashim/cronkicker

build:
	docker buildx build --platform linux/amd64,linux/arm64 -t $(REPOSITORY):$(VERSION) --push .
	docker buildx build --platform linux/amd64,linux/arm64 -t $(REPOSITORY):latest --push .
