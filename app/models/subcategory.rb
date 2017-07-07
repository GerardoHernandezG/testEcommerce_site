class Subcategory < ApplicationRecord

  validates :title, presence: true
  belongs_to :category

end
