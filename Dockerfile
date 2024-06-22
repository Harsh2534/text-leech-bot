FROM python:3.10
WORKDIR /app
COPY . /app/
RUN pip install -r Installer
# Install ffmpeg using apt
RUN apt update && apt install -y ffmpeg
CMD python3 modules/main.py
