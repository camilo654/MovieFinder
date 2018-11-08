class Movie < ApplicationRecord
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :languages
  has_many :actors_movies
  has_many :directors_movies
  has_many :ratings
  validates :title, presence: true
  validates :year, presence: true, length: { is: 4 }
  validates :duration, presence: true, length: { in: 1..3 }
end
