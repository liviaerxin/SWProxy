FROM python:2

ADD . /app
WORKDIR /app

COPY requirements.txt ./
RUN pip install --upgrade pip && \
	pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python", "./SWProxy.py" ]