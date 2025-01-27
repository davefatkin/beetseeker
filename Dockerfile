FROM python:3.9-slim-buster

WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY main.py slskd.py betanin.py ./
COPY example_config.py ./

CMD ["python", "main.py"]
