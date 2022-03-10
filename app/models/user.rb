class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :user_hobbies
  has_many :hobbies, through: :user_hobbies
  has_many :sent_matches, foreign_key: "sender_id", class_name: "Match"
  has_many :received_matches, foreign_key: "receiver_id", class_name: "Match"

  def all_matches
    Match.where("sender_id = :id OR receiver_id = :id", id: self.id)
  end

  def next_match_user
    # Missing check if I already sent a match
    users_with_same_hobbies = User.joins(:user_hobbies).where("user_hobbies.hobby_id IN (?)", self.hobby_ids)

    users_already_sent_a_match = sent_matches.pluck(:receiver_id)

    users_already_received_a_match = received_matches.where(status: [:accepted, :rejected]).pluck(:sender_id)

    User.where.not(id: id)
        .where(id: users_with_same_hobbies.pluck(:id))
        .where.not(id: users_already_sent_a_match)
        .where.not(id: users_already_received_a_match)
        .first

    #User.joins(:user_hobbies).joins("LEFT JOIN matches ON users.id = matches.sender_id OR users.id = matches.receiver_id")
    #    .where.not(id: self.id)
    #    .where("user_hobbies.hobby_id IN (?)", self.hobby_ids)
    #    .where.not(matches: { id: self.sent_matches.pluck(:id) })
    #    .where.not(matches: { id: self.received_matches.where.not("status = 0").pluck(:id) })
    #    .first
  end

  def new_accepted_matches
    self.all_matches.where(status: "accepted")
        .left_joins(:messages)
        .where("messages.id IS NULL")
  end
end
