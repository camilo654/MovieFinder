class CreateActorsMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_movies, :id => false do |t|
      t.references :actor
      t.references :movie

      t.timestamps
    end
    add_index :actors_movies, :actor_id
    add_index :actors_movies, :movie_id
  end
end
