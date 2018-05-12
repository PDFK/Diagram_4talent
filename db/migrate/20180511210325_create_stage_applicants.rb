class CreateStageApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :stage_applicants do |t|
      t.references :stages, foreign_key: true
      t.references :applicants, foreign_key: true

      t.timestamps
    end
  end
end
