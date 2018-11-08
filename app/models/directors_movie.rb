class DirectorsMovie < ApplicationRecord
  belongs_to :casting
  belongs_to :movie
end
