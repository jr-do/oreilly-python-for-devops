install:
	#install commands
	pip install --upgrade pip && \
		pip install -r requirements.txt
format:
	#format the code
lint:
	#flake8 or #pylint
test: 
	#test
deploy:
	#deploy
all: install format lint test deploy