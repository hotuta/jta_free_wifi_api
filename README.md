# jta_free_wifi

日本の無料公衆無線ＬＡＮスポット情報を返すAPIです。

# バージョン

Ruby 2.5.0

Ruby on Rails 5.1.4

# 動作方法

## 動作準備

```bin
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

# 使い方

## 渋谷駅(座標: 35.658034, 139.701636)半径2000m以内50件

`http://0.0.0.0:3000/spots.json?lat=35.658034&lng=139.701636&distance=2000&limit=50`

## 情報元

- [無料公衆無線ＬＡＮスポット - DATA GO JP](http://www.data.go.jp/data/dataset/mlit_20160325_0037)

## ライセンス

- [利用規約 | 歩行者移動支援サービスに関するデータサイト]()https://www.hokoukukan.go.jp/tos.html)
- [利用規約 - DATA GO JP](http://www.data.go.jp/terms-of-use/terms-of-use/)