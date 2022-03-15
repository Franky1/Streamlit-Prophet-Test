# Streamlit-Prophet-Test

Streamlit project to test time-series-forecasting library **prophet** from facebook.

- <https://facebook.github.io/prophet/docs/installation.html>
- <https://github.com/facebook/prophet>

## Usage

### Lokal Docker Streamlit runtime

A Dockerfile is also provided for local testing of the Streamlit app.

```sh
docker build -t streamlitprophet:latest .
docker run -ti -p 8501:8501 --rm streamlitprophet:latest
docker run -ti -p 8501:8501 --rm streamlitprophet:latest /bin/bash
docker run -ti -p 8501:8501 -v $(pwd):/app --rm streamlitprophet:latest  # linux
docker run -ti -p 8501:8501 -v ${pwd}:/app --rm streamlitprophet:latest  # powershell
docker run -ti -p 8501:8501 -v %cd%:/app --rm streamlitprophet:latest  # cmd.exe
docker run -ti --rm python:3.9-slim /bin/bash # testing python container
```

Open local docker streamlit app site: <http://localhost:8501/>

Port `8501` is the default port for Streamlit.

---

## Status

> Work in progress. Not usable yet.
> Last change: 15.03.2022
