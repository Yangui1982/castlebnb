class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)

  belongs_to :castle
  belongs_to :user
  validates :comment, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
