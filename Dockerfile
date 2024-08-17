FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /

RUN apt update
RUN apt install -y build-essential

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 8080

CMD ["streamlit", "run", "app.py", "--browser.gatherUsageStats", "false", "--server.headless", "true", "--server.fileWatcherType", "none", "--server.port", "8080"]
