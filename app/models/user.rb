class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :sent_matches, foreign_key: "sender_id", class_name: "Match"
  has_many :received_matches, foreign_key: "receiver_id", class_name: "Match"


  def all_matches
    Match.where("sender_id = :id OR receiver_id = :id", id: self.id)
  end
end
