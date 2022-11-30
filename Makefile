install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

formant:
	bblack *.py

lint:
	pylint --disable=R,C,W1203 hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py