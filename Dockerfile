FROM python:3.10
WORKDIR /app
RUN python -m pip install poetry 
COPY poetry.lock pyproject.toml src README.md .
RUN poetry install
RUN poetry build
RUN poetry run pytest .

