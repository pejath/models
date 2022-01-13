class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.belongs_to :account
      t.belongs_to :product
      t.boolean :delivery
      t.text :type_of_payment

      t.timestamps
    end
  end
end
