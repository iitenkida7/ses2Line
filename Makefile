install-sam-tool:
	brew tap aws/tap
	brew install aws-sam-cli
	sam --version

init:
	cd src
	npm install

test:
	sam build
	sam local invoke -e events/event.json # -n dev-env.json

deploy:
	sam build
	sam deploy

