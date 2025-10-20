
dev:
	npm run dev -- --host 0.0.0.0

fix:
	rm -rf node_modules/
	rm -f package-lock.json

build:
	docker build -t cs-site .

run: build
	docker run --rm -p 5011:5011 cs-site
