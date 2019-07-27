class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :difficulty
      t.boolean :completed
      t.date :due_date
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
