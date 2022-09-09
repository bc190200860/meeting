class Meeting < ApplicationRecord
  ################# validations ##############
  validates :title, presence: true
  validates :duration, presence: true
  validates :start_time, presence: true
  validates :password, presence: true
  validates :description, presence: true
  ################# Relationships ##############
  belongs_to :user, optional: true
  ################# state machine ##############
  include AASM
  aasm do
    state :proposed, initial: true
    state :confirmed

    event :confirm do
      transitions from: :proposed, to: :confirmed
    end
  end
end
