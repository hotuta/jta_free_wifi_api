# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('db/jta_free_wifi.csv', headers: true, encoding: 'CP932:UTF-8', header_converters: nil) do |row|
  Spot.create(name_jp: row['スポット名（日本語）'], name_en: row['スポット名（英語）'], category: row['カテゴリー'], zipcode: row['郵便番号'], prefecture: row['都道府県'], address_jp: row['住所（日本語）'], address_en: row['住所（英語）'], ssid: row['SSID名称'], latitude: row['緯度'], longitude: row['経度'])
end
