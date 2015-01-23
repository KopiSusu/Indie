class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :developer
      t.text :description
      t.string :poster_image_url
      t.datetime :release_date

      t.timestamps
    end
  end
end
