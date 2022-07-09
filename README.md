# Streamlit Prophet Test

Streamlit project to test time-series-forecasting library **prophet** from facebook.

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://franky1-streamlit-prophet-test-streamlit-app-1ff67n.streamlitapp.com/)

## Resources

- `prophet` Website <https://facebook.github.io/prophet/docs/installation.html>
- `prophet` Github <https://github.com/facebook/prophet>
- This example app in Github: <https://github.com/Franky1/Streamlit-Prophet-Test>

## Issues

- Installation of `pystan` and `prophet` has been tricky in the past, because of the dependencies. These issues have been resolved and since `prophet` version `1.1` the dependency from `pystan` is removed and installation of `prophet` is now a simple `pip install` without any hassles.
- Be aware that the prophet library was renamed in 2020 from `fbprophet` to `prophet`, therefore use the newer naming scheme in your python application.
- The `prophet` library should currently work with python versions from `3.7` to `3.10` on all major architectures `win_amd64`, `linux_x86_64` and `macosx_x86_64`. Python wheels for these python versions and architectures are available on [pypi](<https://pypi.org/project/prophet/>) repository.

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

A `Dockerfile` is provided that is based on the `python3.10-slim` image.
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
docker run -ti -p 8501:8501 -v ${pwd}:/app --rm streamlitprophet:latest  # windows powershell
docker run -ti -p 8501:8501 -v %cd%:/app --rm streamlitprophet:latest  # windows cmd.exe
# testing in the naked python container
docker run -ti --rm python:3.10-slim /bin/bash
 # cleanup dangling docker images/layers
docker builder prune --force
docker image prune --filter="dangling=true" --force
```

Open local docker streamlit app site: <http://localhost:8501/>

Port `8501` is the default port for Streamlit.

---

## Status

> Updated prophet.
> Last change: 09.07.2022
