# dockerfiles
docker setting files storage  

Dockerの設定ファイル置き場



## Development Environment
- macOS High Sierra
- Docker for Mac (18.06.1-ce)

## Example1 MySQL 
以下設定を追加したMySQL5.7 コンテナ
- データ永続化 (ホスト共有)
- JSTタイムゾーン
- バイナリログ出力
- スロークエリログ出力

### Example1 Usage
```sh
cd mysql  
docker-compose up -d
```
 
## Example2 Rails
 Ruby on Rails, MySQL コンテナ
- データ永続化 (ホスト共有)
- JSTタイムゾーン
- Rails new API mode
- DBは追加ユーザーで操作
- RSpec, factory_bot導入

### Example2 Usage
```sh
cd rails  
```
各コンテナ, Rails初期化  
```sh
bash init_container.sh
```
モデル追加 や 開発行った後以下を実行
```sh
bash up_service.sh
```

## Example3 golang
 golang, MySQL コンテナ
- データ永続化 (ホスト共有)
- JSTタイムゾーン

## Example4 golang, Revelフレームワーク 

### Example4 Usage
```sh
cd golang-revel  
```

（初回のみ実行）  
　Revel開発環境のセットアップ
```sh
bash make_base.sh
```
