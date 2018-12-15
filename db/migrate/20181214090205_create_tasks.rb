class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.datetime :deadline, null: true
      t.timestamps null: true
    end
  end
end
