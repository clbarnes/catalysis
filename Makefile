tag = catalysis

build:
	docker build -t $(tag) .

run-interactive: build
	docker run -i -t $(tag) bash
