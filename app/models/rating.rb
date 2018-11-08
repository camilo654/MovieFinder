class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :reviewer
  validates :rating, presence: true, inclusion: { in: 1..10 }
end
