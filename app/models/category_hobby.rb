class CategoryHobby < ApplicationRecord
  belongs_to :hobby
  belongs_to :category

  validates :hobby, presence: true
  validates :category, presence: true
end
