class CreateStageLabors < ActiveRecord::Migration[5.2]
  def change
    create_table :stage_labors do |t|
      t.references :stages, foreign_key: true
      t.integer :laborable_id
      t.string  :laborable_type

      t.timestamps
    end
    add_index :stage_labors, [:laborable_type, :laborable_id]
  end
end
