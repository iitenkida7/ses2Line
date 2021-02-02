install-sam-tool:
	brew tap aws/tap
	brew install aws-sam-cli
	sam --version

init:
	cd src
	npm install

test:
	cd src
	sam build
	sam local invoke -e events/event.json # -n dev-env.json

deploy:
	cd src
	sam build
	sam deploy --profile prod

