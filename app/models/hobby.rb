class Hobby < ApplicationRecord
  has_one_attached :photo
  has_many :category_hobbies
  has_many :categories, through: :category_hobbies

  validates :name, presence: true
  validates :description, presence: true
end
