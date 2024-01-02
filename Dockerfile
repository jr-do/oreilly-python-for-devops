FROM python:3.10.13-slim-bookworm

RUN mkdir -p /app
COPY . main.py /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN python -m textblob.download_corpora
EXPOSE 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]