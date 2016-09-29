class MusicalPiece < ApplicationRecord
  belongs_to :student

  validates :grade, presence: true
  validates :title, presence: true
  validates :category, presence: true
end
