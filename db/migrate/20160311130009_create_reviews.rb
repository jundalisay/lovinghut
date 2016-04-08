class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
	  t.references :food_item, index: true, foreign_key: true
	  t.integer :rating
      t.text :rev
      t.timestamps null: false
    end
  end
end