NAME      := debian-openssh-client
REGISTRY  := whiteplus/$(NAME)
VERSION   := stretch

.PHONY: build tag push

build:
	docker build -t $(NAME):$(VERSION) $(PWD)

tag: build
	docker tag $(NAME):$(VERSION) $(REGISTRY):$(VERSION)

push: tag
	docker push $(REGISTRY):$(VERSION)
