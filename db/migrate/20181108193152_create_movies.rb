class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.int :year
      t.int :duration

      t.timestamps
    end
  end
end
