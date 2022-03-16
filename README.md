# Streamlit Prophet Test

Streamlit project to test time-series-forecasting library **prophet** from facebook.

## Resources

- `prophet` Website <https://facebook.github.io/prophet/docs/installation.html>
- `prophet` Github <https://github.com/facebook/prophet>
- `pystan` Github <https://github.com/stan-dev/pystan>

## Issues

- Installation of `pystan` and `prophet` is currently very unconvenient and requires multiple steps of pip install.
- Therefore installation of `pystan` and `prophet` is currently not possible on **Streamlit Cloud**.

## ToDo

- [x] Add a streamlit example of a time-series-forecasting application with `prophet`.
- [ ] Add a solution that works on Streamlit Cloud.
- [ ] Add alternatives for time-series-forecasting libraries.

## Usage

### Streamlit Cloud

### Docker local

You can build the Docker image for local usage with the following command:

```bash
docker build --progress=plain --tag streamlitprophet:latest .
docker run -ti -p 8501:8501 --rm streamlitprophet:latest
```

#### Lokal Docker Streamlit runtime

A Dockerfile is provided for local testing of the Streamlit app.
Here some useful `docker` commands:

```sh
docker build --progress=plain --tag streamlitprophet:latest .
docker run -ti -p 8501:8501 --rm streamlitprophet:latest
docker run -ti -p 8501:8501 --rm streamlitprophet:latest /bin/bash
docker run -ti -p 8501:8501 -v $(pwd):/app --rm streamlitprophet:latest  # linux
docker run -ti -p 8501:8501 -v ${pwd}:/app --rm streamlitprophet:latest  # powershell
docker run -ti -p 8501:8501 -v %cd%:/app --rm streamlitprophet:latest  # cmd.exe
docker run -ti --rm python:3.9-slim /bin/bash  # testing python container
docker builder prune --force  # cleanup dangling images
docker image prune --filter="dangling=true" --force  # cleanup dangling images
```

Open local docker streamlit app site: <http://localhost:8501/>

Port `8501` is the default port for Streamlit.

---

## Status

> Work in progress.
> Does not work on Streamlit Cloud.
> Last change: 15.03.2022
