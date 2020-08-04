FROM continuumio/miniconda3
LABEL "author"="Alexandre Farias"
LABEL "author_email"="afarias@tuta.io"
LABEL version="1.0"
LABEL description="PyCaret 2.0 image with \
                    additional modules installed."

RUN pip install nbdime &&\
                shap hvplot pyarrow psycopg2 &&\
                pymongo redis fastapi[all] &&\
                sklearn-nature-inspired-algorithms &&\
                gplearn pylint sphinx pycaret==2.0        