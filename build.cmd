ECHO # Installing Requirements

CALL pip install -r .\requirements.txt

CALL pre-commit install

ECHO # You are ready to go!