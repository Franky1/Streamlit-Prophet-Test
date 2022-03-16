# Define base image
FROM continuumio/miniconda3

# Set working directory for the project
WORKDIR /app
COPY . .

# Create Conda environment from the YAML file
RUN conda env create -f environment.yml

# Override default shell and use bash
SHELL ["conda", "run", "-n", "env", "/bin/bash", "-c"]

# Activate Conda environment and check if it is working properly
RUN echo "Making sure prophet is installed correctly..."
RUN python -c "import prophet"

EXPOSE 8501

# Python program to run in the container
ENTRYPOINT ["conda", "run", "-n", "env", "streamlit", "run", "streamlit_app.py"]

# docker build --progress=plain --tag conda:latest --file conda.dockerfile .
# docker run -ti -p 8501:8501 --rm conda:latest /bin/bash
# docker run -ti -p 8501:8501 --rm conda:latest
