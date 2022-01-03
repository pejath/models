class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.text  :carBrand
      t.text  :color
      t.float :price
      t.date  :wos #went on sale

      t.timestamps
    end
  end
end
