FROM ubuntu

Run apt-get update
Run apt-get install -y python3-pip
Run apt-get install -y python3
Run pip install flask

copy app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
