# FROM ubuntu:18.04

# RUN apt-get update && apt-get install -y software-properties-common
# RUN add-apt-repository --yes ppa:deadsnakes/ppa
# RUN apt-get update && apt-get install -y python3.7 python3-pip

# RUN python3.7 -m pip install --upgrade pip
# RUN python3.7 -m pip install numpy pandas scikit-learn boto3

# WORKDIR /app
# COPY src/*.py .
# RUN mkdir data
# # COPY data ./data

# CMD ["python3.7", "main.py"]
# ENTRYPOINT ["python3.7", "main.py"]

FROM alpine:latest

CMD ["echo", "Hello World"]