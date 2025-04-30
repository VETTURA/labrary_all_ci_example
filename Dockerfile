# Базовый образ Python
FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# По умолчанию запускаем тесты (можно заменить на запуск приложения)
CMD ["python", "library.py"]