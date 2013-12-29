class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :number, null: false
      t.references :lesson, index: true
    end
  end
end
