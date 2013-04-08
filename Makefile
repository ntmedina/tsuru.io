deps:
	@pip install -qr requirements.txt

test_deps:
	@pip install -qr test_requirements.txt

test: test_deps
	@python test_app.py
	@flake8 .

run: deps
	@python app.py
