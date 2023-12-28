[![Python application test with Github Actions](https://github.com/jr-do/oreilly-python-for-devops/actions/workflows/devops.yml/badge.svg)](https://github.com/jr-do/oreilly-python-for-devops/actions/workflows/devops.yml)
1. Create a Python Virtual Enviroment `pyhon3 -m venv ~/.venv` or `virtualenv  ~/.venv`
2. Create empty files: `Makefile`, `requirements.txt`, `main.py`, `Dockerfile`. `lib/__init__.py`, `lib/logic.py`
3. Populate `Makefile`
4. Setup Continuos Integration, i.e. check code for issues like lint errors
5. Build cli using python fire library `./cli-fire.py --help` to test logic
