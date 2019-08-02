class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :language
      t.date :due_date
      t.string :photo
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
