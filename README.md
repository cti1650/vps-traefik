# VPS Traefik Test

## このリポジトリについて

このリポジトリはTraefikをVPS上で構築する方法を検証するためのリポジトリです。

## コマンド

### 初期設定

```
cp docker/.env.example docker/.env
```

### サーバー起動

```
sudo make traefik
```

### サーバー停止

```
sudo make traefik-down
```

## 連携サービス

### 検証中サービス

サービス名|用途
:-|:-
[Prometheus](https://prometheus.io/)|監視ツール
[Grafana](https://grafana.com/ja/)|可視化ツール


### 今後追加したいサービス

サービス名|用途
:-|:-
[Authelia](https://www.authelia.com/)|認証・認可サーバ 


## 課題
- traefik.ymlのメールアドレスがハードコードになってしまっている


## 参考サイト
- [Traefik Labs: Say Goodbye to Connectivity Chaos](https://traefik.io/)
- [認証・認可サーバの OSS Authelia を試す](https://zenn.dev/zenogawa/articles/try_authelia)  
