class CreateCategoriesMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_movies, :id => false do |t|
      t.references :category
      t.references :movie

      t.timestamps
    end
    add_index :categories_movies, :category_id
    add_index :categories_movies, :movie_id
  end
end
