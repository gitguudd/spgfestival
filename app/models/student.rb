class Student < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection
  has_many :musical_pieces
  belongs_to :user

  scope :for_user, -> (user) { Student.where(user: user) }
end
