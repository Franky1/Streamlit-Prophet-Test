FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_DEFAULT_TIMEOUT=120 \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    curl \
    wget \
    git

# CAVEAT: packages.txt must exist and have Linux LF only!
# RUN xargs -a packages.txt apt-get install --yes

WORKDIR /app
COPY . .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8501

# CMD ["streamlit", "run", "--server.port", "8080", "streamlit_app.py"]
CMD ["streamlit", "run", "streamlit_app.py"]
