.PHONY: run test
all: run

run:

test:
	python3 -m coverage erase
	python3 -m coverage run -m unittest *_test.py
	python3 -m coverage report -m --fail-under=80

reqs:
	dpkg -V $$(xargs < packages.txt) || sudo apt-get install -y -q $$(xargs < packages.txt)
	pip3 -q install -r requirements.txt


