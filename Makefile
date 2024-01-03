install:
	#install commands
	pip install --upgrade pip && \
		pip install -r requirements.txt
post-install:
	python -m textblob.download_corpora
format:
	#format the code
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test: 
	#test
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	#run docker
	#docker run -p 127.0.0.1:8080:8080 829bb7e2aff0
deploy:
	#deploy
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 347504412464.dkr.ecr.us-east-1.amazonaws.com
	docker build -t fastapiwiki .
	docker tag fastapiwiki:latest 347504412464.dkr.ecr.us-east-1.amazonaws.com/fastapiwiki:latest
	docker push 347504412464.dkr.ecr.us-east-1.amazonaws.com/fastapiwiki:latest
all: install post-install lint test deploy