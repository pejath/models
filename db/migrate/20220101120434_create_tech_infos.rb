class CreateTechInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :tech_infos do |t|
      t.belongs_to :product
      t.text :bodyType
      t.integer :doorsNum
      t.integer :seatsNum
      t.text :engineType
      t.float :engineDispl #объем

      t.timestamps
    end
  end
end
