# 機械学習開発環境<br>(Machine Learning Development environment)

Dockerを使って、環境によらない機械学習用の開発環境(JupyterLab)を作成します。  
サブモジュールとしてもお使いください。  
また、ローカルのカレントディレクトリとコンテナの/optがリンク(マウント)してますので、コンテナを削除してもカレントディレクトリやディレクトリ内のファイルはローカルに残ります。

## 使用方法(Usage)
以下のコマンドを実行する前に、Dockerfileがあるディレクトリ移動してください。
### 1. コンテナの作成  
以下のコマンドでコンテナを作成します。
```console
$ docker-compose build
```
### 2. コンテナの起動  
以下のコマンドでコンテナを起動します。
```console
$ docker-compose up
```
### 3. JupyterLabにアクセス  
ウェブブラウザから「*localhost:8888*」にアクセスしてください。  
※ポート番号*8888*を既に使用している場合は、docker-compose.ymlの「ports:」を「<空いているポート>:8888」と変更して、再度コンテナを作成し、起動してください。そして、ウェブブラウザから「localhost:<空いていたポート>」にアクセスしてください。

## その他コマンド一覧
- コンテナの停止  
```
$ docker-compose stop
```
- コンテナの作成と起動を同時に行う場合
```
$ docker-compose up --build
```
- コンテナを停止して削除する場合
```
$ docker-compose down
```
- バックエンドで起動する場合
```
$ docker-compose up -d
```
または
```
$ docker-compose up --build -d
```
- バックエンドで起動しているor新しくターミナルのタブを開いてコンテナ内に入る場合
```
$ docker-compose exec ml_dev bash
```

## pipパッケージリスト
requirements.txtにも記載しています。  
パッケージを追加する際は、requirements.txtに追記して、再度コンテナを作成してください。  
再度コンテナを作成したくない方は、コンテナ内で「pip install」を実行してください。  
- jupyterlab
- keras
- matplotlib
- numpy
- pandas
- pystan
- scikit-learn
- scipy
- seaborn
- tensorflow
- torch

#### &copy; 2022 Kenshiro Sawaguchi