class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.int :rating

      t.references :movie#, index: true
      t.references :reviewer#, index: true

      t.timestamps
    end
  end
end
