class CreateInterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.string :observation
      t.references :interview_types, foreign_key: true

      t.timestamps
    end
  end
end
