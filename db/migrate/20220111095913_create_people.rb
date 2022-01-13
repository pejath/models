class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.text :full_name
      t.text :passport_series
      t.text :passport_num
      t.text :home_adress
      t.integer :phone_num

      t.timestamps
    end
  end
end
