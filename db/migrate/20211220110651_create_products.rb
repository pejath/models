class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :account
      t.belongs_to :product
      t.text :countryOrin
      t.text :carBrand
      t.text :model
      t.text :color
      t.boolean :availability
      t.float :price

      t.timestamps
    end
  end
end
