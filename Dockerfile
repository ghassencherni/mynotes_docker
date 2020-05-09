FROM python:3.7

RUN git clone https://github.com/ghassencherni/notes.git

WORKDIR notes

RUN pip install -r requirements.txt

ENV FLASK_APP /notes

ENV FLASK_ENV development

EXPOSE 80

COPY docker-entrypoint.sh .

RUN chmod 777 docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["flask","run","--host","0.0.0.0","--port","80"]
