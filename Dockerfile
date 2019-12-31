FROM python:rc-alpine3.10
ENV FLASK_APP=hello.py
COPY ./src/ /app
WORKDIR /app
RUN pip install --upgrade pip \
    && pip install flask \
    && pip install streamtologger
#RUN apk update \
#    apk add curl nginx
EXPOSE 5000
#CMD python ./hello.py
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"] 
