UID := $(shell id -u)
GID := $(shell id -g)

build_docker:
	docker build -t huelse/seal -f Dockerfile .

run_docker:
	mkdir -p notebooks
	docker run --env-file env --user $(UID):$(GID) -v $(PWD)/notebooks:/notebooks -p 8888:8888  -it huelse/seal
