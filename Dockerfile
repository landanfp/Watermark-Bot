# از یک تصویر پایه Python استفاده کنید
FROM python:3.9-slim

# مسیر کاری را تنظیم کنید
WORKDIR /app

# کپی کردن فایل‌های پروژه به داخل کانتینر
COPY . /app

# نصب وابستگی‌ها (اگر فایل requirements.txt دارید)
RUN pip install --no-cache-dir -r requirements.txt

# اجرای فایل bot.py با Python3
CMD ["python3", "bot.py"]
