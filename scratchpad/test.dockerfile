FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_DEFAULT_TIMEOUT=120 \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
    gcc \
    g++ \
    build-essential \
    python3-dev

WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8501

COPY . .

CMD ["streamlit", "run", "streamlit_app.py"]

# docker build --progress=plain --tag prophet:latest --file test.dockerfile .
# docker run -ti -p 8501:8501 --rm prophet:latest /bin/bash
# docker run -ti -p 8501:8501 --rm prophet:latest
# docker run -ti -p 8501:8501 -v ${pwd}:/app --rm prophet:latest