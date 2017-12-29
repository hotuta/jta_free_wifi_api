class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.text :name_jp
      t.text :name_en
      t.text :category
      t.text :zipcode
      t.text :prefecture
      t.text :address_jp
      t.text :address_en
      t.text :ssid
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
