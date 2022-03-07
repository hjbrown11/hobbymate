class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :user_hobbies
  has_many :hobbies, through: :user_hobbies
  has_many :sent_matches, foreign_key: "sender_id", class_name: "Match"
  has_many :received_matches, foreign_key: "receiver_id", class_name: "Match"

  def all_matches
    Match.where("sender_id = :id OR receiver_id = :id", id: self.id)
  end

  def next_match_user
    # Missing check if I already sent a match
    User.joins(:user_hobbies).left_joins(:received_matches)
        .where.not(id: self.id)
        .where("user_hobbies.hobby_id IN (?)", self.hobby_ids)
        .where("(matches.receiver_id = ? AND matches.status = 0) OR matches.id IS NULL", self.id)
        .first
  end

  def new_accepted_matches
    self.all_matches.where(status: "accepted")
        .left_joins(:messages)
        .where("messages.id IS NULL")
  end
end
