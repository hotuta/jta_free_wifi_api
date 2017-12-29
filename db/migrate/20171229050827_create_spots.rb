class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.text :name_jp, index: true
      t.text :name_en, index: true
      t.text :category, index: true
      t.text :zipcode, index: true
      t.text :prefecture, index: true
      t.text :address_jp, index: true
      t.text :address_en, index: true
      t.text :ssid, index: true
      t.float :latitude, index: true
      t.float :longitude, index: true

      t.timestamps
    end
  end
end
