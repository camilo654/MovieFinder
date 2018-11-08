class Reviewer < ApplicationRecord
  has_many :ratings
  validates :name, presence: true
end
