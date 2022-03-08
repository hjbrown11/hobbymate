class UserHobby < ApplicationRecord
  belongs_to :user
  belongs_to :hobby

  validates :hobby_id, uniqueness: { scope: :user_id }
end
