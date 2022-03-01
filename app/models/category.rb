class Category < ApplicationRecord
  has_many :hobby, through: :category_hobby

  validates :name, presence: true
end
