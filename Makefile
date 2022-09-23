tag = catalysis

build:
	docker build -t $(tag) .

run-interactive: build
	docker run -i -t $(tag) bash

ipynb-convert:
	ipython nbconvert use_cases/*.ipynb --to script

ipynb-clean:
	ipython nbconvert --clear-output --inplace use_cases/*.ipynb
