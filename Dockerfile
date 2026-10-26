FROM python:3.12-slim

# Рабочая папка внутри контейнера
WORKDIR /app

COPY requirements.txt .
# Устанавливаем Flask
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Указываем порт приложения
EXPOSE 5000

# Запускаем Flask
CMD ["python", "app.py"]
