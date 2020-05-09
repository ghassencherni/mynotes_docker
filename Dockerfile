FROM python:3.7

RUN git clone https://github.com/ghassencherni/notes.git

WORKDIR notes

RUN pip install -r requirements.txt

ENV FLASK_APP /notes

ENV FLASK_ENV development

# managed by configmap
#ENV DB_HOST notes.cnjw85jacdlf.eu-west-3.rds.amazonaws.com
#ENV DB_USERNAME db_user
#ENV DB_PASSWORD mypassword

EXPOSE 80

#COPY docker-entrypoint.sh /usr/local/bin

#RUN chmod 777 /usr/local/bin/docker-entrypoint.sh

#ENTRYPOINT ["docker-entrypoint.sh; exit 0"]

CMD ["flask","run","--host","0.0.0.0","--port","80"]
