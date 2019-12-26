FROM python:3.7-slim
ADD . /app
WORKDIR /app

RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install -r requirements.txt && \
  apt-get remove -y git
  
EXPOSE 80
CMD scrapydweb
