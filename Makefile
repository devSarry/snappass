.PHONY: base dev prod run test

base: requirements.txt
	pip install -r requirements.txt

dev: dev-requirements.txt
	pip install -r dev-requirements.txt

prod: prod-requirements.txt
	pip install -r prod-requirements.txt

run: prod
	FLASK_DEBUG=1 FLASK_APP=snappass.main NO_SSL=True venv/bin/flask run

test:
	PYTHONPATH=snappass venv/bin/nosetests -s tests
