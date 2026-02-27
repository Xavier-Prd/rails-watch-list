class RenameFilmIdToMovieIdInBookmarks < ActiveRecord::Migration[8.1]
  def change
    rename_column :bookmarks, :film_id, :movie_id
  end
end
