FROM python:3.7.17-bullseye

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY cefr_predictor/models/xgboost.joblib cefr_predictor/models/
COPY cefr_predictor/preprocessing.py cefr_predictor/inference.py cefr_predictor/

RUN pip install Flask==2.2.5
COPY predict .
