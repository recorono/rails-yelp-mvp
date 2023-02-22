class Review < ApplicationRecord
belongs_to :restaurant
# A review must belong to a restaurant.

# A review must have a content.
# A review must have a rating.
validates :content, :rating, presence:true
# A review’s rating must be a number between 0 and 5.
validates :rating, numericality:{in: 0..5}
# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
validates :rating, numericality:{only_intager: true }
end
