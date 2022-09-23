tag = catalysis

build:
	docker build -t $(tag) .

run-interactive: build
	docker run -i -t $(tag) bash

convert-notebooks:
	ipython nbconvert use_cases/*.ipynb --to script
