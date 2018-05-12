class CreateResponsables < ActiveRecord::Migration[5.2]
  def change
    create_table :responsables do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
