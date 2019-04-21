FROM python:2.7
ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app/projectname
COPY requirements.txt /app/
RUN cd /app && pip install -r requirements.txt
COPY . /app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
