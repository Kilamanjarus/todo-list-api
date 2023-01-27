class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :date
      t.string :status
      t.string :description
      t.date :deadline

      t.timestamps
    end
  end
end
