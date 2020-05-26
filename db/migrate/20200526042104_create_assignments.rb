class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :user, index: true, null: false, foreign_key: true
      t.references :role, index: true, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
