page-loader:
	poetry run page-loader

package-install:
	python3 -m pip install --user dist/*.whl --force-reinstall
	
install:
	poetry install

test:
	poetry run pytest --cov=page_loader --cov-report xml

lint:
	poetry run flake8 page_loader

selfcheck:
	poetry check

check: selfcheck test lint

build: check
	poetry build

.PHONY:
	install test lint selfcheck check build
