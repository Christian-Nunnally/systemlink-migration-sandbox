pyfiles = slmigrate test *.py
test_files = slmigrate

test:
	pytest -s -v test/test_$(test_files).py --doctest-modules --cov slmigrate --cov-config=.coveragerc --cov-report term-missing -vv

lint:
	flake8 $(files) --exclude basic_scripts

fix:
	autopep8 --in-place -r $(files)

install:
	pip install -U -r requirements.txt -r test-requirements.txt

report:
	codecov

build: slmigrate
	rm -rf dist
	python setup.py sdist bdist_wheel

publish:
	make build
	twine upload --config-file ~/.pypirc -r pypi dist/*

.PHONY: test build
