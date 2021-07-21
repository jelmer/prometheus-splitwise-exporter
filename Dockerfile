FROM debian:sid-slim
RUN apt update && apt -y install python3-pip python3-prometheus-client && pip3 install splitwise
ADD . /code
ENTRYPOINT python3 /code/prometheus-splitwise-exporter.py --config=/config/config.json --prometheus=$PUSHGATEWAY
