class Candidate < ApplicationRecord
  belongs_to :session

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :session, presence: true

  after_create :send_welcome_email

  def send_welcome_email
    CandidateMailer.welcome(self).deliver_now
    AdminMailer.welcome(self).deliver_now
  end


end
