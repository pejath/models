class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.text :fullName
      t.text :passportSeries
      t.text :passportNum
      t.text :homeAdress
      t.integer :phoneNum

      t.timestamps
    end
  end
end
