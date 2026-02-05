FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml poetry.lock uv.lock ./
RUN pip install --no-cache-dir uv && uv pip install --system --no-deps .

COPY . .

EXPOSE 8000
CMD ["python", "-m", "openhands"]