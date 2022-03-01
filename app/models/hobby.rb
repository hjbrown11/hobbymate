class Hobby < ApplicationRecord
  has_one_attached :photo
  has_many :categories, through: :category_hobby
  validates :name, presence: true
  validates :description, presence: true
end
