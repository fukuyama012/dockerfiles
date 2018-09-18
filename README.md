# dockerfiles
docker setting files storage  

Dockerの設定ファイル置き場



## Development Environment
- macOS High Sierra
- Docker for Mac (18.06.1-ce)

## Example1 Contents
以下設定を追加したMySQL5.7 コンテナ
- データ永続化 (ホスト共有)
- JSTタイムゾーン
- バイナリログ出力
- スロークエリログ出力

### Example1 Usage
```sh
cd example1  
docker-compose up -d
```
 
## Example2 Contents
 Ruby on Rails, MySQL コンテナ
- データ永続化 (ホスト共有)
- JSTタイムゾーン
- Rails new API mode
- DBは追加ユーザーで操作
- RSpec, factory_bot導入

### Example2 Usage
```sh
cd example2  
```
各コンテナ, Rails初期化  
```sh
bash init_container.sh
```
モデル追加 や 開発行った後以下を実行
```sh
bash up_service.sh
```
