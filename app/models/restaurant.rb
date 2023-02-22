class Restaurant < ApplicationRecord
has_many :reviews, dependent: :destroy
# A restaurant must have a name, an address and a category.
validates :name, :address, :category, presence: true
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
validates :category, inclusion: {in: CATEGORY}
# When a restaurant is destroyed, all of its reviews must be destroyed as well.

end
