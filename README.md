# Streamlit Prophet Test

Streamlit project to test time-series-forecasting library **prophet** from facebook.

## Resources

- `prophet` Website <https://facebook.github.io/prophet/docs/installation.html>
- `prophet` Github <https://github.com/facebook/prophet>

## Issues

- Installation of `pystan` and `prophet` has been tricky in the past, because of the dependencies. Since Prophet Version `1.1` the dependency from `pystan` is removed and installation of `prophet` is easy now.

## ToDo

- [x] Add a streamlit example of a time-series-forecasting application with `prophet`.
- [x] Add a solution that works on Streamlit Cloud.
- [x] Cleanup Github repository.
- [ ] Add some alternatives for time-series-forecasting libraries.

## Usage

### Streamlit Cloud

- Clone this repository in GitHub.
- Sign in to your Streamlit account.
- Add the repository as new Streamlit project.
- Test the project.
- Modify the project to your needs.

### Docker local

You can build and run the Docker image for local usage with the following commands:

```bash
# build the docker image
docker build --progress=plain --tag streamlitprophet:latest .
# run the docker container
docker run -ti -p 8501:8501 --rm streamlitprophet:latest
# run the docker container with mounted project for further development
docker run -ti -p 8501:8501 -v ${pwd}:/app --rm streamlitprophet:latest
```

#### Lokal Docker Streamlit runtime

A Dockerfile is provided for local testing of the Streamlit app.
Here some useful `docker` commands:

```sh
# build the docker image
docker build --progress=plain --tag streamlitprophet:latest .
# run the docker container
docker run -ti -p 8501:8501 --rm streamlitprophet:latest
# run the docker container with shell
docker run -ti -p 8501:8501 --rm streamlitprophet:latest /bin/bash
# run the docker container with mounted project for further development
docker run -ti -p 8501:8501 -v $(pwd):/app --rm streamlitprophet:latest  # linux
docker run -ti -p 8501:8501 -v ${pwd}:/app --rm streamlitprophet:latest  # powershell
docker run -ti -p 8501:8501 -v %cd%:/app --rm streamlitprophet:latest  # cmd.exe
# testing in the naked python container
docker run -ti --rm python:3.9-slim /bin/bash
 # cleanup dangling docker images/layers
docker builder prune --force
docker image prune --filter="dangling=true" --force
```

Open local docker streamlit app site: <http://localhost:8501/>

Port `8501` is the default port for Streamlit.

---

## Status

> Updated prophet.
> Last change: 26.06.2022
