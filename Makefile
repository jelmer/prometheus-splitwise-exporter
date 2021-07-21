all: docker

docker:
	docker build -t ghcr.io/jelmer/prometheus-splitwise-exporter .
	docker push ghcr.io/jelmer/prometheus-splitwise-exporter
