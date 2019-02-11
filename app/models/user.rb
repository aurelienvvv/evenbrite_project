class User < ApplicationRecord

  ### Envoie un mail après la création d'un event ###

  after_create :welcome_send

  has_many :attendances
  has_many :events, through: :attendances
  has_many :admins, foreign_key: "admin_id"
  has_many :participants, foreign_key: "participant_id"
  has_many :events

 def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end