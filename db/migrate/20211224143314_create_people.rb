class CreatePeople < ActiveRecord::Migration[6.1]
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
