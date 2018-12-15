class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.datetime :deadline, null: true
      t.timestamps null: true
    end
  end
end
