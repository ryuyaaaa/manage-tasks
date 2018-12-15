class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, index: true
      t.datetime :deadline, null: true
      t.boolean :is_finished, default: false, null: false
      t.timestamps null: true
    end
  end
end
