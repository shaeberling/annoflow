# To build the image:  docker image build -t annoflow .
# To launch an instance: docker run -d -p 5000:5000 --name=annoflow annoflow:latest

FROM python:3.13-slim
WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Start production WSGI server, bind to all IPs and port 5000.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 4 --timeout 600 --preload app:app
