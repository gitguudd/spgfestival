class Registration < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  enum category: [:solo, :ensemble]
  
  has_many :students
  has_many :pieces, class_name: "MusicalPiece"
end
