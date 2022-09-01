FROM rasa/rasa:latest-full
USER root
RUN apt-get install -y build-essential git-all
RUN . /opt/venv/bin/activate 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir fasttext
RUN pip install --no-cache-dir git+https://github.com/RasaHQ/rasa-nlu-examples
RUN mkdir /vecs
ADD C:/Users/hp/Documents/arabic_chatbot/cc.ar.300.bin/cc.ar.300.bin /vecs/cc.ar.300.bin
RUN chmod -R a+rxw /vecs
