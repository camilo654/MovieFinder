class CreateCastings < ActiveRecord::Migration[5.1]
  def change
    create_table :castings do |t|
      t.string :name
      t.string :last_name
      t.string :gender

      t.timestamps
    end
  end
end
