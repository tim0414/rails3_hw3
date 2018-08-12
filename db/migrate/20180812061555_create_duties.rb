class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :description
      t.integer :employee_id

      t.timestamps
    end
    add_index :duties, :employee_id
  end
end
