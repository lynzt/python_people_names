FROM python:3.6

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
RUN pip3 install -r requirements.txt

COPY . /usr/src/app

CMD [ "python3", "-m unittest discover -p \"*_tests.py\"" ]
