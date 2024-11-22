# ネットワーク名
NETWORK_NAME=traefik-network

# Docker network create コマンドを実行してネットワークを作成
create-network:
	docker network ls | grep -q $(NETWORK_NAME) || docker network create $(NETWORK_NAME)

# ネットワークの削除
remove-network:
	docker network rm $(NETWORK_NAME)

traefik:
	docker compose -f docker/compose.traefik.yaml up -d

traefik-down:
	docker compose -f docker/compose.traefik.yaml down

traefik-build:
	docker compose -f docker/compose.traefik.yaml build

