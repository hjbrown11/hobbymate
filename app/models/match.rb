class Match < ApplicationRecord
  belongs_to :sender
  belongs_to :receiver
end
