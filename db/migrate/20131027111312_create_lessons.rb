class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title, null: false
      t.string :description
      t.text :body, null: false
      t.integer :number
      t.references :course, index: true

      t.timestamps
    end
  end
end
