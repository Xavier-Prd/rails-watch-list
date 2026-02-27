class RenameFilmToMovie < ActiveRecord::Migration[8.1]
  def change
    rename_table :films, :movies
  end
end
