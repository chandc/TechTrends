FROM python:2.7
LABEL maintainer="Daniel Chan"

COPY . /techtrends
WORKDIR /techtrends
RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

# command to run on container start
CMD [ "python", "app.py" ]
