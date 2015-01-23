class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :rails
      t.string :g
      t.string :model
      t.string :review
      t.references :user, index: true
      t.references :game, index: true
      t.text :text
      t.integer :rating_out_of_ten

      t.timestamps
    end
  end
end
