class CreateLanguagesMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :languages_movies, :id => false do |t|
      t.references :language
      t.references :movie

      t.timestamps
    end
    add_index :languages_movies, :language_id
    add_index :languages_movies, :movie_id
  end
end
