# syntax=docker/dockerfile:1

FROM python:3.7.14-bullseye

WORKDIR /catalysis

COPY requirements.txt requirements.txt
COPY requirements-notebooks.txt requirements-notebooks.txt

RUN \
	pip install -U pip setuptools wheel && \
	pip install -r requirements.txt && \
	pip install -r requirements-notebooks.txt

COPY use_cases use_cases

RUN ipython nbconvert use_cases/*.ipynb --to script

COPY . /catalysis

RUN pip install -e .[notebooks]

# COPY credentials.json /credentials.json

# CMD ["python", "/catalysis/use_cases/Check_Existing_Lineage_Membership.py"]
