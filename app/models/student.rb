class Student < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  has_many :musical_pieces, through: :registraions
  has_many :registrations
end
