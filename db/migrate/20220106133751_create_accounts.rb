class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :person
      t.boolean :admin
      t.text :password
      t.text :email
      t.text :nickName

      t.timestamps
    end
  end
end
