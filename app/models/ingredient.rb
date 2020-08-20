class Ingredient < ApplicationRecord
  has_many :doses
  # before_destroy :check_doses
  validates :name, uniqueness: true, presence: true

# private
#   def check_doses
#     unless self.children.empty?
#       errors.add_to_base("cannot delete while doses exist")
#       return false
#     end
#   end
end
