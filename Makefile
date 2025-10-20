

.PHONY: web
web:
	cd web/site/ && npm run serve -- --host 0.0.0.0

buildweb:
	cd web/site/ && npm run build

update:
	git stash
	git pull
	git stash apply
	touch wsgi.py

.PHONY: api
api:
	cd web/api2 && uvicorn main:app --reload

