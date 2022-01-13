class CreateTechInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :tech_infos do |t|
      t.belongs_to :product
      t.text :body_type
      t.integer :doors_num
      t.integer :seats_num
      t.text :engine_type
      t.float :engine_displ #объем

      t.timestamps
    end
  end
end
