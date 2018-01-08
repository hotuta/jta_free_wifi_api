require 'rails_helper'

RSpec.describe 'Spots', type: :request do
  describe 'GET /spots.json' do
    it 'JSONが空で返されること' do
      get '/spots.json'
      expect(response).to be_success
      expect(json).to eq []
    end
  end

  describe 'GET /spots.json?lat=35.658034&lng=139.701636' do
    it '渋谷駅半径500m以内のWi-Fiスポット情報が5件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636'
      expect(response).to be_success
      expect(json.size).to eq 5
      expect(json[0]['name_jp']).to eq '渋谷（半蔵門線）'
      expect(json[0]['address_jp']).to eq '渋谷区道玄坂1-1-1'
      expect(json[0]['distance']).to eq 16.30550312990535
    end

    it '渋谷駅半径500m以内のWi-Fiスポット情報が20件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636&limit=20'
      expect(response).to be_success
      expect(json.size).to eq 20
      expect(json[0]['name_jp']).to eq '渋谷（半蔵門線）'
      expect(json[0]['address_jp']).to eq '渋谷区道玄坂1-1-1'
      expect(json[0]['distance']).to eq 16.30550312990535
    end

    it '渋谷駅半径5000m以内のWi-Fiスポット情報が500件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636&distance=5000&limit=500'
      expect(response).to be_success
      expect(json.size).to eq 500
      expect(json[0]['name_jp']).to eq '渋谷（半蔵門線）'
      expect(json[0]['address_jp']).to eq '渋谷区道玄坂1-1-1'
      expect(json[0]['distance']).to eq 16.30550312990535
    end
  end

  describe 'GET /spots.json?lat=35.658034&lng=139.701636&language=en' do
    it '英語で渋谷駅半径500m以内のWi-Fiスポット情報が5件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636&language=en'
      expect(response).to be_success
      expect(json.size).to eq 5
      expect(json[0]['name_en']).to eq 'Shibuya(Hanzomon line)'
      expect(json[0]['address_en']).to eq '2-1-1, Dogenzaka, Shibuya-ku, Tokyo'
      expect(json[0]['distance']).to eq 16.30550312990535
    end

    it '英語で渋谷駅半径500m以内のWi-Fiスポット情報が20件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636&language=en&limit=20'
      expect(response).to be_success
      expect(json.size).to eq 20
      expect(json[0]['name_en']).to eq 'Shibuya(Hanzomon line)'
      expect(json[0]['address_en']).to eq '2-1-1, Dogenzaka, Shibuya-ku, Tokyo'
      expect(json[0]['distance']).to eq 16.30550312990535
    end

    it '英語で渋谷駅半径5000m以内のWi-Fiスポット情報が500件返されること' do
      get '/spots.json?lat=35.658034&lng=139.701636&language=en&distance=5000&limit=500'
      expect(response).to be_success
      expect(json.size).to eq 500
      expect(json[0]['name_en']).to eq 'Shibuya(Hanzomon line)'
      expect(json[0]['address_en']).to eq '2-1-1, Dogenzaka, Shibuya-ku, Tokyo'
      expect(json[0]['distance']).to eq 16.30550312990535
    end
  end
end
