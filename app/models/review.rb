class Review < ApplicationRecord
  belongs_to :list
  VALID_RATINGS = [ 1, 2, 3, 4, 5 ]
  validates :rating, presence: true, inclusion: { in: VALID_RATINGS }
end
