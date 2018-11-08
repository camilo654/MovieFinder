class CreateCountrysMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :countrys_movies, :id => false do |t|
      t.references :country
      t.references :movie

      t.timestamps
    end
    add_index :countrys_movies, :country_id
    add_index :countrys_movies, :movie_id
  end
end
