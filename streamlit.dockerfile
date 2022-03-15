FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_DEFAULT_TIMEOUT=120 \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

# we probably need build tools?
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
    build-essential

# we need the requirements.txt file from prophet to be in the root of the project
# https://github.com/facebook/prophet/blob/main/python/requirements.txt
WORKDIR /app
COPY . .

# first: install all required packages for pystan
RUN pip install --no-cache-dir --upgrade cython numpy
# second: install all required packages for prophet from their requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
# third: install prophet itself
RUN pip install --no-cache-dir --upgrade prophet
# install streamlit
RUN pip install --no-cache-dir --upgrade plotly streamlit

EXPOSE 8501

# CMD ["streamlit", "run", "--server.port", "8080", "streamlit_app.py"]
CMD ["streamlit", "run", "streamlit_app.py"]
