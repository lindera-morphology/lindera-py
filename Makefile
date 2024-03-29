clean:
	cargo clean
	find . | grep -E "(__pycache__|\.pyc|\.pyo$$)" | xargs rm -rf
	rm -rf .pytest_cache

lint:
	black --check examples tests

fmt:
	cargo fmt
	black examples/* tests/*

.PHONY: tests
test:
	cargo test

develop:
	maturin develop --release --features=ipadic,unidic,ko-dic,cc-cedict,ipadic-filter,unidic-filter,ko-dic-filter,cc-cedict-filter

build:
	maturin build -i python --release --features=ipadic,unidic,ko-dic,cc-cedict,ipadic-filter,unidic-filter,ko-dic-filter,cc-cedict-filter

install:
	pip install . lindera_py

uninstall:
	pip uninstall -y lindera_py

pytest:
	python -m pytest tests
