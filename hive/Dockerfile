FROM apache/hive:4.0.1
USER root
RUN apt-get update && apt-get install -y netcat && rm -rf /var/lib/apt/lists/*
USER hive