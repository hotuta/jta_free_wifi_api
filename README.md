# jta_free_wifi

日本の無料公衆無線ＬＡＮスポット情報を返すAPIです。

# バージョン

Ruby 2.5.0

Ruby on Rails 5.1.4

# 動作方法

## 動作準備

```bin
$ bundle install
$ rails db:migrate
$ rails db:seed
```

```bin
$ rails s
```

## Rspec

```bin
$ bundle exec rake db:migrate RAILS_ENV=test
$ bundle exec rake db:seed RAILS_ENV=test
```

```bin
$ bundle exec rspec
```

# パラメータ

## 座標(必須)

例) `lat=35.658034&lng=139.701636`

## 件数(デフォルト5件) 

例) `limit=10`

## 半径〇〇m以内(デフォルト500m)

例) `distance=2000`

## 英語オプション

例) `language=en`

## あいまい検索(施設名と住所)

例) `word=渋谷`

# 使い方

## 渋谷駅(座標: 35.658034, 139.701636)半径2000m以内50件

`http://0.0.0.0:3000/spots.json?lat=35.658034&lng=139.701636&distance=2000&limit=50`

# Heroku

CloudGarageでDokkuを活用してPostgreSQLサーバーを立ててHerokuのDBとして利用しています。

[渋谷駅半径500m以内のWi-Fiスポット情報5件](https://jta-free-wifi.herokuapp.com/spots.json?lat=35.658034&lng=139.701636)

[英語で渋谷駅半径500m以内のWi-Fiスポット情報20件](https://jta-free-wifi.herokuapp.com/spots.json?lat=35.658034&lng=139.701636&language=en&limit=20)

[渋谷が施設名か住所に含まれているWi-Fiスポット情報100件](https://jta-free-wifi.herokuapp.com/spots.json?word=渋谷&limit=100)

[渋谷駅半径5km以内で渋谷が施設名か住所に含まれているWi-Fiスポット情報100件](https://jta-free-wifi.herokuapp.com/spots.json?lat=35.658034&lng=139.701636&word=渋谷&distance=5000&limit=100)

## 情報元

- [無料公衆無線ＬＡＮスポット - DATA GO JP](http://www.data.go.jp/data/dataset/mlit_20160325_0037)

## ライセンス

- [利用規約 | 歩行者移動支援サービスに関するデータサイト]()https://www.hokoukukan.go.jp/tos.html)
- [利用規約 - DATA GO JP](http://www.data.go.jp/terms-of-use/terms-of-use/)