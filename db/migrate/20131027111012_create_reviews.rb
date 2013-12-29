class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text, null: false
      t.references :user, index: true
      t.references :course, index: true
      t.integer :rate

      t.timestamps
    end
  end
end
