pip install -r virtualenv
virtualenv .venv
source .venv/bin/activate

    pip install -r requierements.txt
    export FLASK_APP=main.py
    export FLASK_DEBUG=1
    export FLASK_ENV=development
    
    flask run