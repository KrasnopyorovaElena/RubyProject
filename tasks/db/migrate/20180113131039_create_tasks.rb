class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.integer :status, null: false
      t.references :author,   foreign_key: { to_table: :users }, null: false
      t.references :executor, foreign_key: { to_table: :users }
      t.references :project,  foreign_key: true

      t.timestamps
    end
  end
end
