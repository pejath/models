class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.text :car_brand
      t.text :color
      t.float :price
      t.date :wos

      t.timestamps
    end
  end
end
