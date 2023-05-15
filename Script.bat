@echo off

if "%1"=="install" (
    
    pip install -r requirements.txt
)

if "%1"=="format" (
    black *.py
)

if "%1"=="lint" (
    pylint --disable=R,C hello.py
)

if "%1"=="test" (
    python -m pytest -vv --cov=hello test_hello.py
)
