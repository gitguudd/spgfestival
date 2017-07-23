class Registration < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :student
  belongs_to :user

  has_many :musical_pieces
end
