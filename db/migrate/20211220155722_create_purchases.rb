class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :customerCode
      t.date :purchaseDate
      t.boolean :delivert
      t.text :typeOfPayment

      t.timestamps
    end
  end
end
