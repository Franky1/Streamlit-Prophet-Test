FROM python:3.9-slim

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
