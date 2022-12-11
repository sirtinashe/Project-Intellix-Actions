FROM rasa/rasa:latest

COPY . .

USER root

EXPOSE 5055
#RUN rasa train 
USER root

COPY requirements.txt .
COPY server.sh .
RUN pip install -r requirements.txt
# RUN python -m spacy download en_core_web_md
# WORKDIR /app
# RUN rasa run actions
# CMD [ "rasa ","run","actions" ]
ENTRYPOINT ["server.sh"]
