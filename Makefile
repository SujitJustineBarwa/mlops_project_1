# Makefile for Python project

.PHONY: help init install format lint test clean

help:
	@echo "Available commands:"
	@echo "  init    - Set up environment and install requirements"
	@echo "  install - Install development requirements"
	@echo "  format  - Format code with autopep8"
	@echo "  lint    - Run flake8 on src"
	@echo "  test    - Run pytest"
	@echo "  clean   - Remove build and cache files"

init:
	python3 -m venv env
	. env/bin/activate && pip install -r requirements.txt

install:
	. env/bin/activate && pip install -r requirements.txt

format:
	. env/bin/activate && autopep8 --in-place --aggressive --aggressive src/**/*.py

lint:
	. env/bin/activate && flake8 src/

test:
	. env/bin/activate && pytest tests/

clean:
	rm -rf __pycache__ *.egg-info env/