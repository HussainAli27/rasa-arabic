FROM rasa/rasa:3.1.0
USER root
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends build-essential git-core \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN . /opt/venv/bin/activate 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir fasttext
RUN pip install --no-cache-dir git+https://github.com/RasaHQ/rasa-nlu-examples
RUN mkdir /vecs
ADD vecs/cc.ar.300.bin /vecs/cc.ar.300.bin
RUN chmod -R a+rxw /vecs
