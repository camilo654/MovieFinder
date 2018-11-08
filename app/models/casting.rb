class Casting < ApplicationRecord
  has_many :actors_movies
  has_many :directors_movies
  validates :name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, length: { is: 1 }
end
