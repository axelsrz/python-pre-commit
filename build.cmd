ECHO # Installing Requirements

CALL pip install -r .\requirements.txt

CALL pre-commit install --hook-type pre-push

ECHO # You are ready to go!