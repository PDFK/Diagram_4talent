class CreatePostulantProcesses < ActiveRecord::Migration[5.2]
  def change
    create_table :postulant_processes do |t|
      t.string :name
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
