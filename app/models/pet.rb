class Pet < ApplicationRecord
  SPECIES = %w[dog cat rabbit turtle]
  validates :name, presence: true
  # specify some species => [dog, cat, rabbit, turtle]
  validates :species, inclusion: { in: SPECIES }
end
