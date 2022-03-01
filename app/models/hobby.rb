class Hobby < ApplicationRecord
  has_one_attached :photo
  belongs_to :category, through: :category_hobby
  validates :name, presence: true
  validates :description, presence: true
end
