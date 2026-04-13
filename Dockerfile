FROM python:3.11-slim

RUN useradd --uid 1000 --create-home theia

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY service/ ./service/
COPY config.py .

RUN chown -R theia /app
USER theia

EXPOSE 8080

ENV FLASK_APP=service:app
ENV PORT=8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--workers", "1", "--timeout", "120", "service:app"]
