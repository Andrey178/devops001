FROM python:3.10.1-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8000
CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000
