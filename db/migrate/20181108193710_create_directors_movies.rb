class CreateDirectorsMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :directors_movies, :id => false do |t|
      t.references :director
      t.references :movie

      t.timestamps
    end
    add_index :directors_movies, :director_id
    add_index :directors_movies, :movie_id
  end
end
