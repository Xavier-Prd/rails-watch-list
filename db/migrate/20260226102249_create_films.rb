class CreateFilms < ActiveRecord::Migration[8.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.integer :rating

      t.timestamps
    end
  end
end
