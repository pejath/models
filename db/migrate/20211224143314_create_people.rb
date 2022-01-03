class CreatePeople < ActiveRecord::Migration[6.1]
  def self.up
    execute "ALTER TABLE people modify COLUMN id int(8) AUTO_INCREMENT = 0"
  end
  def change
    create_table :people do |t|
      t.text :fullName
      t.text :passportSeries
      t.text :passportNum
      t.text :homeAdress
      t.integer :phoneNum

      t.timestamps
    end
  end
end
