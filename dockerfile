FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install uv
RUN uv sync

EXPOSE 5001

CMD ["uv", "run", "app.py"]