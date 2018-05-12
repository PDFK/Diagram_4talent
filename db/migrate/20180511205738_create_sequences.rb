class CreateSequences < ActiveRecord::Migration[5.2]
  def change
    create_table :sequences do |t|
      t.integer :order
      t.references :stages, foreign_key: true
      t.references :postulant_processes, foreign_key: true

      t.timestamps
    end
  end
end
