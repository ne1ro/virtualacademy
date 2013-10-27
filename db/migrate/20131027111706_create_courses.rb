class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.float :cost, default: 10
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
