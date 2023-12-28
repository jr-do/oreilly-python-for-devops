install:
	#install commands
	pip install --upgrade pip && \
		pip install -r requirements.txt
format:
	#format the code
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test: 
	#test
	python -m pytest -vv --cov=mylib test_logic.py
build:
	#build container 
deploy:
	#deploy
all: install format lint test build deploy