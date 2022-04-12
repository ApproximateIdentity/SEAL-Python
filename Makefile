UID := $(shell id -u)
GID := $(shell id -g)

build_docker:
	docker build -t huelse/seal -f Dockerfile .

run_docker:
	mkdir -p notebooks data
	docker run \
        --env-file env \
        --user $(UID):$(GID) \
        -v $(PWD)/notebooks:/notebooks \
        -v $(PWD)/data:/data:rw \
        -p 8888:8888 \
        -it huelse/seal
