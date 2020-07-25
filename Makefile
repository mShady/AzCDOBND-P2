install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv src/test_hello.py


lint:
	pylint --disable=R,C src/hello.py

all: install lint test