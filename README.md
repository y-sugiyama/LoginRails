
# LoginRails

## 概要
ログイン機能を持ったサイトの雛形になるようなプロジェクトです。
Ruby on Rails5 で作成してます。

![概要](https://raw.githubusercontent.com/y-sugiyama/JobSite/master/assets/images/loginrails.png)

## 要件

- PHP 5.6 以上
- SQLite 3.8.10.2

## インストール方法

```
$ git clone https://github.com/y-sugiyama/LoginRails.git
$ cd LoginRails
$ bundle install --path=vender/bundle
```

## データベースのセットアップ


マイグレーションの実行

```
$ bin/rails db:migrate
```

初期データの書き込み

```
$ bin/rails db:seed 
```



## アプリケーションの起動


```
$ rails s
...
...
=> Booting Puma
=> Rails 5.0.0.1 application starting in development on http://localhost:3000
```
## 画像の取り扱い(about copyrighted photo)

```
このサイトの画像や壁紙は、ぱくたそ(www.pakutaso.com）の写真素材を利用しています。この写真を継続して利用する場合は、ぱくたそ公式サイトからご自身でダウンロードしていただくか、ぱくたそのご利用規約(www.pakutaso.com/userpolicy.html）に同意していただく必要があります。同意しない場合は写真のご利用はできませんのでご注意ください。
```

